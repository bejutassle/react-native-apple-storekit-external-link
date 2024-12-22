import AppleStorekitExternalLink from './NativeAppleStorekitExternalLink';

export function showExternalLinkPopup(appIdentifier: string): Promise<boolean> {
  return AppleStorekitExternalLink.showExternalLinkPopup(appIdentifier);
}
