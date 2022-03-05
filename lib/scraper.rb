require "open-uri"
require "nokogiri"

url = "https://www.gitasupersite.iitk.ac.in/srimad?language=dv&field_chapter_value=1&field_nsutra_value=1&htrskd=1&httyn=1&htshg=1&hcchi=1&hcrskd=1&ecsiva=1&etsiva=1&etpurohit=1&etgb=1&setgb=1&etssa=1&etassa=1&etradi=1&etadi=1"

def scrape(url)
  doc = Nokogiri::HTML(URI.open(url, "Accept-Language" => "en-US").read)

  shlok = doc.search('.views-field-body').text
  hcrskd = doc.search('.views-field-field-hcrskd').text
  htshg = doc.search('.views-field-field-htshg').text
  ecsiva = doc.search('.views-field-field-ecsiva').text
  hcchi = doc.search('.views-field-field-hcchi').text
  htrskd = doc.search('.views-field-field-htrskd').text
  httyn = doc.search('.views-field-field-httyn').text
  etadi = doc.search('.views-field-field-etadi').text
  etgb = doc.search('.views-field-field-etgb').text
  etsiva = doc.search('.views-field-field-etsiva').text
  setgb = doc.search('.views-field-field-setgb').text
  etassa = doc.search('.views-field-field-etassa').text
  etradi = doc.search('.views-field-field-etradi').text
  etssa = doc.search('.views-field-field-etssa').text
  etpurohit = doc.search('.views-field-field-etpurohit').text

  {
    shlok: shlok,
    hcrskd: hcrskd,
    htshg: htshg,
    ecsiva: ecsiva,
    hcchi: hcchi,
    htrskd: htrskd,
    httyn: httyn,
    etadi: etadi,
    etgb: etgb,
    etsiva: etsiva,
    setgb: setgb,
    etassa: etassa,
    etradi: etradi,
    etssa: etssa,
    etpurohit: etpurohit
  }
end
