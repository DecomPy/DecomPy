	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__const
	.globl	_http_http              ## @http_http
_http_http:
	.asciz	"http://"

	.globl	_http_200               ## @http_200
_http_200:
	.asciz	"200 "

	.globl	_http_301               ## @http_301
_http_301:
	.asciz	"301 "

	.globl	_http_302               ## @http_302
_http_302:
	.asciz	"302 "

	.globl	_http_get               ## @http_get
_http_get:
	.asciz	"GET "

	.globl	_http_10                ## @http_10
_http_10:
	.asciz	"HTTP/1.0"

	.globl	_http_11                ## @http_11
_http_11:
	.asciz	"HTTP/1.1"

	.globl	_http_content_type      ## @http_content_type
_http_content_type:
	.asciz	"content-type: "

	.globl	_http_texthtml          ## @http_texthtml
_http_texthtml:
	.asciz	"text/html"

	.globl	_http_location          ## @http_location
_http_location:
	.asciz	"location: "

	.globl	_http_host              ## @http_host
_http_host:
	.asciz	"host: "

	.globl	_http_crnl              ## @http_crnl
_http_crnl:
	.asciz	"\r\n"

	.globl	_http_index_html        ## @http_index_html
_http_index_html:
	.asciz	"/index.html"

	.globl	_http_404_html          ## @http_404_html
_http_404_html:
	.asciz	"/404.html"

	.globl	_http_content_type_html ## @http_content_type_html
	.p2align	4
_http_content_type_html:
	.asciz	"Content-type: text/html\r\n\r\n"

	.globl	_http_content_type_css  ## @http_content_type_css
	.p2align	4
_http_content_type_css:
	.asciz	"Content-type: text/css\r\n\r\n"

	.globl	_http_content_type_text ## @http_content_type_text
	.p2align	4
_http_content_type_text:
	.asciz	"Content-type: text/text\r\n\r\n"

	.globl	_http_content_type_png  ## @http_content_type_png
	.p2align	4
_http_content_type_png:
	.asciz	"Content-type: image/png\r\n\r\n"

	.globl	_http_content_type_gif  ## @http_content_type_gif
	.p2align	4
_http_content_type_gif:
	.asciz	"Content-type: image/gif\r\n\r\n"

	.globl	_http_content_type_jpg  ## @http_content_type_jpg
	.p2align	4
_http_content_type_jpg:
	.asciz	"Content-type: image/jpeg\r\n\r\n"

	.globl	_http_content_type_binary ## @http_content_type_binary
	.p2align	4
_http_content_type_binary:
	.asciz	"Content-type: application/octet-stream\r\n\r\n"

	.globl	_http_html              ## @http_html
_http_html:
	.asciz	".html"

	.globl	_http_shtml             ## @http_shtml
_http_shtml:
	.asciz	".shtml"

	.globl	_http_htm               ## @http_htm
_http_htm:
	.asciz	".htm"

	.globl	_http_css               ## @http_css
_http_css:
	.asciz	".css"

	.globl	_http_png               ## @http_png
_http_png:
	.asciz	".png"

	.globl	_http_gif               ## @http_gif
_http_gif:
	.asciz	".gif"

	.globl	_http_jpg               ## @http_jpg
_http_jpg:
	.asciz	".jpg"

	.globl	_http_text              ## @http_text
_http_text:
	.asciz	".text"

	.globl	_http_txt               ## @http_txt
_http_txt:
	.asciz	".txt"

	.globl	_http_user_agent_fields ## @http_user_agent_fields
	.p2align	4
_http_user_agent_fields:
	.asciz	"Connection: close\r\nUser-Agent: uIP/1.0 (; http://www.sics.se/~adam/uip/)\r\n\r\n"


.subsections_via_symbols
