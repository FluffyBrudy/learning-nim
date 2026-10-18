# config.nims
proc linkSdl(prefix: string) =
  switch("dynlibOverride", "SDL3")
  switch("dynlibOverride", "SDL3_image")
  switch("dynlibOverride", "SDL3_ttf")
  switch("dynlibOverride", "SDL3_mixer")
  switch("passC", "-I" & prefix & "/include")
  switch("passL", "-L" & prefix & "/lib")
  switch("passL", "-lSDL3")
  switch("passL", "-lSDL3_image")
  switch("passL", "-lSDL3_ttf")
  switch("passL", "-lSDL3_mixer")

when defined(macosx):
  linkSdl(getEnv("NIM2D_SDL_PREFIX", "/opt/homebrew"))
else:
  linkSdl(getEnv("NIM2D_SDL_PREFIX", "/usr/local"))