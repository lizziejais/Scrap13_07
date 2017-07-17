#Récupérer toutes les adresses email des mairies du Val d'Oise.
=begin
	
- Tout d'abord, écris une méthode get_the_email_of_a_townhal_from_its_webpage qui, comme son nom l'indique, 
récupère l'adresse email à partir de l'url d'une mairie, par exemple celle de Vauréal.

- Ensuite, écris une méthode get_all_the_urls_of_val_doise_townhalls qui, comme son nom l'indique, 
récupère toutes les url de villes du Val d'Oise. C'est recommandé de le faire de cette page web

- Tu n'as plus qu'à recoller les méthodes ensemble et à toi la gloire
BONUS : c'est quand même recommandé d'enregistrer les urls dans un hash propre du genre 
{ :name => "nomDeLaVille", :email=> "ville@machin.chose" } 
pour que le CEO de get-email-corp ne soit pas trop perdu
=end 

require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://annuaire-des-mairies.com/95/vaureal.html"
page = Nokogiri::HTML(open(PAGE_URL))

def get_the_email_of_a_townhal_from_its_webpage
data = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
data.css('p.Style22')[11].text
end 

puts get_the_email_of_a_townhal_from_its_webpage


def get_all_the_urls_of_val_doise_townhalls
	page_web=Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	ndd="http://annuaire-des-mairies.com"
	url=page_web.css('a.lientxt')
	urlcomp= (url.each{|u| puts "#{ndd}"+u["href"]})
	urls=[]
	urls.push(urlcomp)
end

puts get_all_the_urls_of_val_doise_townhalls

=begin
page3 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
get_all_the_urls_of_val_doise_townhalls = page3.css("a.lientxt")
page_URLville = [] 	#Crée un array vide, l'objectif est d'y ranger les adresses mail de toutes les villes


get_all_the_urls_of_val_doise_townhalls.each {|links| page_URLville.push "http://annuaire-des-mairies.com/"+links
 ["href"]} #comment retirer le ./ pour que la bonne adresse apparaissent?
=end
urls.each {|page| 
					data = Nokogiri::HTML(open(page))
					emailformat = /[@]/
					get_the_email_of_a_townhal_from_its_webpage= data.css("p.Style22")[11].text  
					get_the_email_of_a_townhal_from_its_webpage.each {|email| puts email} 
					} 









