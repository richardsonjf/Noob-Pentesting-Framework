#!/usr/bin/env ruby
require 'open-uri'
require 'json'

dom = ARGV[0]
TC = "https://www.threatcrowd.org/searchApi/v2/domain/report/?domain="
VT = "https://www.virustotal.com/vtapi/v2/domain/report?apikey="

if File.zero?("keys/virustotalkey.txt") == true
 puts "\nVirustotal API Key not added, please add the API key in keys/virustotalkey.txt"
else
 fff = File.foreach('keys/virustotalkey.txt').first(1)
 key = fff[0].chomp
 vt_res = open(VT + key.to_s + "&domain=" + dom.to_s).read
 vt_parsed = JSON.parse(vt_res)
 arr_vt = vt_parsed["subdomains"]
 if arr_vt.nil?
  puts "\nNo Subdomains found, Virustotal.com"
 else
 puts "\nResults from Virustotal:\n\n"
 sleep(2)
 arr_vt.each {|sub| puts " " + sub.to_s } 
 File.open("vt_#{dom}.txt", "w+") do |f|
  f.puts(arr_vt)
 end
 end
end

tc_res = open(TC + dom.to_s).read

tc_parsed = JSON.parse(tc_res)
arr_tc =  tc_parsed["subdomains"]
if arr_tc.nil?
 puts "\nNo Subdomains found, Threatcrowd.org\n"
 sleep(1)
else
puts "\nResults from Threatcrowd:\n\n"
sleep(2)
arr_tc.each {|sub| puts " " + sub.to_s }
File.open("tc_#{dom}.txt", "w+") do |f|
  f.puts(arr_tc)
end
end


