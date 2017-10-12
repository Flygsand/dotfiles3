let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
	\ 'cpp': ['/usr/local/opt/llvm/bin/clangd'],
	\ 'go': ['go-langserver'],
	\ 'java': ['java', '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044', '-Declipse.application=org.eclipse.jdt.ls.core.id1', '-Dosgi.bundles.defaultStartLevel=4', '-Declipse.product=org.eclipse.jdt.ls.core.product', '-Dlog.protocol=true', '-Dlog.level=ALL', '-noverify', '-Xmx1G', '-jar', '/opt/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.4.0.v20161219-1356.jar', '-configuration', '/opt/jdt-language-server/config_mac', '-data', '~/Development'],
	\ 'javascript': ['javascript-typescript-stdio'],
	\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
\ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <F8> :call LanguageClient_textDocument_documentSymbol()<CR>
