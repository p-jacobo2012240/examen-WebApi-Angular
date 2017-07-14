import { TutorialIn6amPage } from './app.po';

describe('tutorial-in6am App', () => {
  let page: TutorialIn6amPage;

  beforeEach(() => {
    page = new TutorialIn6amPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
