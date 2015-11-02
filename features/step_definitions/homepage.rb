
When(/^I navigate to HLN homepage$/) do
  visit('http://test10g.hln.be.persgroep.be/hln/nl/1/home/index.dhtml')
end

And(/^I scroll to the Regio Integration$/) do
  #page.evaluate_script("jQuery('#nav-bar-outer').css('width')")
  #page.evaluate_script("jQuery('body').scrollTo('.js-regio-holder')")
  page.execute_script(%Q{$(".js-regio-holder").prop("scrollTop", 1000000).trigger('scroll')})
end