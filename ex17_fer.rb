# -*- encoding : utf-8 -*-
File.open(ARGV[0]){|indata| File.open(ARGV[1],'w'){|output| output.write(indata.read)}}
}}

}}
