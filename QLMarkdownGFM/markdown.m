#import <Foundation/Foundation.h>
#import "cmark.h"
#import "core-extensions.h"

const char *extensions[] = { "table", "strikethrough", "autolink", "tagfilter", "tasklist" };

NSData *renderHTML(NSURL *url)
{
    NSData *data = [NSData dataWithContentsOfURL:url];
    if (!data) {
        return nil;
    }

    int options = CMARK_OPT_DEFAULT | CMARK_OPT_GITHUB_PRE_LANG;
    core_extensions_ensure_registered();

    cmark_mem *mem = cmark_get_default_mem_allocator();
    cmark_parser *parser = cmark_parser_new_with_mem(options, mem);

    int extensions_count = sizeof(extensions) / sizeof(char*);
    for (int i = 0; i < extensions_count; i++) {
        cmark_syntax_extension *syntax_extension = cmark_find_syntax_extension(extensions[i]);
        if (syntax_extension) {
            cmark_parser_attach_syntax_extension(parser, syntax_extension);
        }
    }

    cmark_parser_feed(parser, data.bytes, data.length);
    cmark_node *document = cmark_parser_finish(parser);
    char *output = cmark_render_html_with_mem(document, options, cmark_parser_get_syntax_extensions(parser), mem);

    NSString *html = [NSString stringWithFormat:@"<!DOCTYPE html>\n"
                      "<html>\n"
                      "<head>\n"
                      "<meta charset='utf-8'>\n"
                      "<base href='%@'/>\n"
                      "</head>\n"
                      "<body>\n"
                      "%@"
                      "</body>\n"
                      "</html>",
                      url, [NSString stringWithUTF8String:output]];
    

    free(output);

    cmark_parser_free(parser);
    cmark_node_free(document);
    
    return [html dataUsingEncoding:NSUTF8StringEncoding];
}
