initGalleryFlow = ->
  if Modernizr.touch
    buildSlider()
  else
    window.setTimeout buildContentFlow, 200

buildContentFlow = ->
  flowDiv = $("#galleryflow")[0]
  allImages = getImagesArray()
  window.onAllImagesLoaded = ->
    myNewFlow = new ContentFlow(flowDiv,
      onclickActiveItem: (item) ->
        jewelName = item.caption.innerHTML
        jewelid = item.element.firstChild.getAttribute("jewelid")
        url = basicUrl + "?id=" + jewelid
        window.location = url
    )
    myNewFlow.init()
    i = 0

    while i < allImages.length
      myNewFlow.addItem allImages[i], "last"
      i++
buildSlider = ->
  ul = $("#slider ul")
  sliderlist = $("#slider ul")[0]
  allImages = getImagesArray()
  i = 0

  while i < allImages.length
    img = allImages[i]
    console.log "img = " + img
    li = $("<li>").appendTo(ul)
    console.log li
    console.log ul
    a = $("<a>").attr(href: basicUrl + "?id=" + img.jewelid).appendTo(li)
    a.append img
    i++
  window.slider = new Swipe($("#slider")[0])
notifyImageLoaded = ->
  window.imagesLeftToLoad--
  console.log "images left to load: " + window.imagesLeftToLoad
  window.onAllImagesLoaded()  if window.imagesLeftToLoad <= 0
getImagesArray = ->
  imagesArray = new Array()
  i = 0

  while i < gon.jewels.length
    path = gon.jewels[i]["primary_image_file_name"]
    jewelName = gon.jewels[i]["name"]
    jewelId = gon.jewels[i]["id"]
    console.log "path : " + path
    console.log "jewelid : " + jewelId
    newImage = createNewImage(path, jewelName, jewelId)
    imagesArray.push newImage
    newImage.onload = notifyImageLoaded
    i++
  imagesArray
createNewImage = (path, caption, jewelId) ->
  result = document.createElement("img")
  result.setAttribute "src", path
  result.setAttribute "class", "nir"
  result.setAttribute "title", caption
  result.setAttribute "jewelid", jewelId
  result
activeClicked = ->
  console.log "active item clicked"
myNewFlow = null
basicUrl = undefined
$(document).ready ->
  window.imagesLeftToLoad = gon.jewels.length
  initGalleryFlow()
