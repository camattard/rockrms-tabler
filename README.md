# TablerPublic Rock RMS Theme

A Stark-derived public Rock RMS theme shell using Tabler / Bootstrap 5 with scoped Bootstrap 3 compatibility shims for legacy Rock blocks.

## Install

1. Copy the `TablerPublic` folder into your Rock `Themes` directory.
2. Add Tabler assets into `Assets/vendor/tabler/`:
   - `tabler.min.css`
   - `tabler.min.js`
   - optionally `tabler-icons.min.css`
3. In Rock Admin > CMS Configuration > Sites, set your public site theme to `TablerPublic`.
4. Test Login, Giving, Event Registration, Forms, Group Finder, and any public account pages.

## Notes

- Do not edit Rock's built-in Stark theme directly.
- The compatibility shims are scoped to `.rock-content` so the Tabler shell remains Bootstrap 5 native.
- If a Rock block uses Bootstrap 3 JavaScript APIs directly, add a targeted fix rather than loading Bootstrap 3 globally.
