import { browser, element, by } from "protractor";
describe("Frames in Protractor", function(){
  browser.ignoreSynchronization = true;
  browser.manage().timeouts().implicitlyWait(1000)
  if('iFrameTest', function() {
    browser.get("https://www.examplesite.com");
    element(by.xpath("//label/span")).getText().then(function(text){
      console.log(text);
      let f1 = element(by.xpath("//iframe[@id='frame1']")).getWebElement();
      browser.switchTo().frame(f1);
      element.by(tagName("input")).sendKeys(text);
      
      browser.switchTo().defaultContent();
      
      element(by.tagName("h1")).getText().then(function(header){
        console.log("Header is " + header);
      })
      
      browser.sleep(9000);
    })    
  })


})
