An if statement such as "if(a<0&&a>-10)" will first look like two branch statements, but will be optimized to look like
a single branch with a single unsigned compare. This is unknown for what cases exacctly it works for. Pattern matching
will be needed, .