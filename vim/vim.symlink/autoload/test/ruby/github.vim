function! test#ruby#github#test_file(file) abort
  return expand('%:p') =~# 'github/test'
endfunction

function! test#ruby#github#build_position(type, position) abort
  if a:type == 'nearest'
    let test_name = s:nearest_test(a:position)
    let matching_lines = s:matching_lines(test_name, a:position['file'])
    let line_number = s:find_nearest_line_number(a:position['line'], matching_lines)

    return [a:position['file'], '--name', "'/L".line_number."$/'"]
  elseif a:type == 'file'
    return [a:position['file']]
  else
    return []
  endif
endfunction

function! test#ruby#github#build_args(args) abort
  return [get(l:, 'path')] + a:args
endfunction

function! test#ruby#github#executable() abort
  return 'script/testrb_or_zt'
endfunction

function! s:nearest_test(position) abort
  let name = test#base#nearest_test(a:position, g:test#ruby#patterns)

  if empty(name['test'])
    let test = ''
  else
    let test = name['test'][0]
  endif

  return escape(test, '"')
endfunction

function! s:find_nearest_line_number(needle, haystack) abort
  let closest_line_number = ''
  let closest_distance = ''

  for line_number in a:haystack
    let distance = abs(line_number - a:needle)
    if closest_line_number == ''
      let closest_line_number = line_number
      let closest_distance = distance
    elseif distance < closest_distance
      let closest_line_number = line_number
      let closest_distance = distance
    endif
  endfor

  return closest_line_number
endfunction

function! s:matching_lines(test_name, file) abort
  let command = 'egrep -n "x?test.*'.a:test_name.'" '.a:file.' | cut -f1 -d:'
  let results = system(command)[:-2]
  return split(results, "\n")
endfunction
