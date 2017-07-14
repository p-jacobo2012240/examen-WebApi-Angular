import { TutorialIn6avPage } from './app.po';

describe('tutorial-in6av App', () => {
  let page: TutorialIn6avPage;

  beforeEach(() => {
    page = new TutorialIn6avPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
