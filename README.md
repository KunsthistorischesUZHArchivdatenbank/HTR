# FoNDUE HTR for archival documents of Zürich Kunsthistorisches Institut #

:arrows_clockwise: In progress !

We created two HTR models for our project according to the type of writing (handwriting and typography) present in our archive documents. Our corpus, consisting of more than 140,000 images, has the particularity of having few written elements. On the other hand, these written elements employ different languages, diferent hands and different forms of typography. The use of HTR on this type of corpus (archival documents in art history) is experimental: it will be an opportunity to evaluate the performance of this type of technology on an atypical and particularly heterogeneous corpus.

******
## [Data] ##
The whole corpus was divided using a notebook: on one side, the first pages, and on the other, the pages containing an illustration. 

### Corpus segmentation ####

The _SegmOnto_ zones used are : 

- [`TitlePageZone`](https://github.com/SegmOnto/Guidelines/blob/main/zones/TitlePageZone/TitlePageZone.md) : for the first page of each portfolio.
- [`GraphicZone:illustration`](https://github.com/SegmOnto/Guidelines/blob/main/zones/GraphicZone/DecorationZone.md)
- [`NumberingZone`](https://github.com/SegmOnto/Guidelines/blob/main/zones/NumberingZone/NumberingZone.md)

Manuscript lines and typographic lines are distinguished by specific subtypes : 

- `DefaultLine:manuscript`(https://github.com/SegmOnto/Guidelines/blob/main/lines/DefaultLine/DefaultLine.md)
- `DefaultLine:print`
- `HeadingLine:manuscript`(https://github.com/SegmOnto/Guidelines/blob/main/lines/HeadingLine/HeadingLine.md)
- `HeadingLine:print`