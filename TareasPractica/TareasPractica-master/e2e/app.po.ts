import { browser, by, element } from 'protractor';

export class TutorialIn6avPage {
  navigateTo() {
    return browser.get('/');
  }

  getParagraphText() {
    return element(by.css('app-root h1')).getText();
  }
}
