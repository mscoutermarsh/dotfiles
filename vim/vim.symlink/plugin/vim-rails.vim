" Create related file (Rails test file if missing). :AC
function! s:CreateRelated()
  let related = rails#buffer().alternate_candidates()[0]
  call s:Open(related)
endfunction

function! s:Open(file)
  exec('vsplit ' . a:file)
endfunction

command! AC :call <SID>CreateRelated()

let g:rails_projections = {
  \ "app/view_models/*.rb": {
  \   "command": "viewmodel",
  \   "template": ["class {camelcase|capitalize|colons} < ViewModel", "end"],
  \   "test": ["test/view_models/{}_test.rb"]
  \ },
  \ "test/integration/*_controller_test.rb": {
  \   "alternate": ["app/controllers/{}_controller.rb"]
  \ },
  \ "test/integration/api/*_test.rb": {
  \   "alternate": ["app/api/{}.rb"]
  \ },
  \ "app/api/*.rb": {
  \   "alternate": ["test/integration/api/{}_test.rb"]
  \ },
  \ "app/controllers/*_controller.rb": {
  \   "test": ["test/integration/{}_controller_test.rb"]
  \ } }
