def to_camel_case(str)
  splited = str.split(/-|_/)
  splited[1..-1].nil? ? '' : splited[0] + splited[1..-1].map(&:capitalize).join('')
end

p to_camel_case('asdf_asdf_asdf')
p 'asdf_asdf_asdf'.split(/-|_/)