class Amazon_Page < SitePrism::Page
  set_url"http://www.amazon.com"
  element :search_field, "#twotabsearchtextbox"
  element :search_result, "##result_2"
  element :search_col, "#resultsCol"



end