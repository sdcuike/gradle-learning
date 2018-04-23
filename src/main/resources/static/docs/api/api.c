#include <enunciate-common.c>
#ifndef DEF_api_ns0_demoRequestDto_H
#define DEF_api_ns0_demoRequestDto_H

/**
 * (no documentation provided)
 */
struct api_ns0_demoRequestDto {


  /**
   * (no documentation provided)
   */
  xmlChar *name;

  /**
   * (no documentation provided)
   */
  int *age;
};

/**
 * Reads a DemoRequestDto from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The DemoRequestDto, or NULL in case of error.
 */
static struct api_ns0_demoRequestDto *xmlTextReaderReadNs0DemoRequestDtoType(xmlTextReaderPtr reader);

/**
 * Writes a DemoRequestDto to XML.
 *
 * @param writer The XML writer.
 * @param _demoRequestDto The DemoRequestDto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0DemoRequestDtoType(xmlTextWriterPtr writer, struct api_ns0_demoRequestDto *_demoRequestDto);

/**
 * Frees the elements of a DemoRequestDto.
 *
 * @param _demoRequestDto The DemoRequestDto to free.
 */
static void freeNs0DemoRequestDtoType(struct api_ns0_demoRequestDto *_demoRequestDto);

#endif /* DEF_api_ns0_demoRequestDto_H */
#ifndef DEF_api_ns0_demoResponseDto_H
#define DEF_api_ns0_demoResponseDto_H

/**
 * (no documentation provided)
 */
struct api_ns0_demoResponseDto {


  /**
   * (no documentation provided)
   */
  int *code;

  /**
   * (no documentation provided)
   */
  xmlChar *msg;
};

/**
 * Reads a DemoResponseDto from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The DemoResponseDto, or NULL in case of error.
 */
static struct api_ns0_demoResponseDto *xmlTextReaderReadNs0DemoResponseDtoType(xmlTextReaderPtr reader);

/**
 * Writes a DemoResponseDto to XML.
 *
 * @param writer The XML writer.
 * @param _demoResponseDto The DemoResponseDto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0DemoResponseDtoType(xmlTextWriterPtr writer, struct api_ns0_demoResponseDto *_demoResponseDto);

/**
 * Frees the elements of a DemoResponseDto.
 *
 * @param _demoResponseDto The DemoResponseDto to free.
 */
static void freeNs0DemoResponseDtoType(struct api_ns0_demoResponseDto *_demoResponseDto);

#endif /* DEF_api_ns0_demoResponseDto_H */
#ifndef DEF_api_ns0_demoRequestDto_M
#define DEF_api_ns0_demoRequestDto_M

/**
 * Reads a DemoRequestDto from XML. The reader is assumed to be at the start element.
 *
 * @return the DemoRequestDto, or NULL in case of error.
 */
static struct api_ns0_demoRequestDto *xmlTextReaderReadNs0DemoRequestDtoType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct api_ns0_demoRequestDto *_demoRequestDto = calloc(1, sizeof(struct api_ns0_demoRequestDto));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0DemoRequestDtoType(_demoRequestDto);
        free(_demoRequestDto);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "name", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}name of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}name of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0DemoRequestDtoType(_demoRequestDto);
          free(_demoRequestDto);
          return NULL;
        }

        _demoRequestDto->name = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "age", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}age of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}age of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0DemoRequestDtoType(_demoRequestDto);
          free(_demoRequestDto);
          return NULL;
        }

        _demoRequestDto->age = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}demoRequestDto.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}demoRequestDto. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _demoRequestDto;
}

/**
 * Writes a DemoRequestDto to XML.
 *
 * @param writer The XML writer.
 * @param _demoRequestDto The DemoRequestDto to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0DemoRequestDtoType(xmlTextWriterPtr writer, struct api_ns0_demoRequestDto *_demoRequestDto) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (_demoRequestDto->name != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "name", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}name. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}name...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_demoRequestDto->name));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}name. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}name. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_demoRequestDto->age != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "age", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}age. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}age...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_demoRequestDto->age));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}age. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}age. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a DemoRequestDto.
 *
 * @param _demoRequestDto The DemoRequestDto to free.
 */
static void freeNs0DemoRequestDtoType(struct api_ns0_demoRequestDto *_demoRequestDto) {
  int i;
  if (_demoRequestDto->name != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor name of type api_ns0_demoRequestDto...\n");
#endif
    freeXsStringType(_demoRequestDto->name);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor name of type api_ns0_demoRequestDto...\n");
#endif
    free(_demoRequestDto->name);
  }
  if (_demoRequestDto->age != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor age of type api_ns0_demoRequestDto...\n");
#endif
    freeXsIntType(_demoRequestDto->age);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor age of type api_ns0_demoRequestDto...\n");
#endif
    free(_demoRequestDto->age);
  }
}
#endif /* DEF_api_ns0_demoRequestDto_M */
#ifndef DEF_api_ns0_demoResponseDto_M
#define DEF_api_ns0_demoResponseDto_M

/**
 * Reads a DemoResponseDto from XML. The reader is assumed to be at the start element.
 *
 * @return the DemoResponseDto, or NULL in case of error.
 */
static struct api_ns0_demoResponseDto *xmlTextReaderReadNs0DemoResponseDtoType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct api_ns0_demoResponseDto *_demoResponseDto = calloc(1, sizeof(struct api_ns0_demoResponseDto));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0DemoResponseDtoType(_demoResponseDto);
        free(_demoResponseDto);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "code", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}code of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}code of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0DemoResponseDtoType(_demoResponseDto);
          free(_demoResponseDto);
          return NULL;
        }

        _demoResponseDto->code = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "msg", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}msg of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}msg of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0DemoResponseDtoType(_demoResponseDto);
          free(_demoResponseDto);
          return NULL;
        }

        _demoResponseDto->msg = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}demoResponseDto.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}demoResponseDto. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _demoResponseDto;
}

/**
 * Writes a DemoResponseDto to XML.
 *
 * @param writer The XML writer.
 * @param _demoResponseDto The DemoResponseDto to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0DemoResponseDtoType(xmlTextWriterPtr writer, struct api_ns0_demoResponseDto *_demoResponseDto) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (_demoResponseDto->code != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "code", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}code. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}code...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_demoResponseDto->code));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}code. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}code. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_demoResponseDto->msg != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "msg", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}msg. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}msg...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_demoResponseDto->msg));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}msg. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}msg. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a DemoResponseDto.
 *
 * @param _demoResponseDto The DemoResponseDto to free.
 */
static void freeNs0DemoResponseDtoType(struct api_ns0_demoResponseDto *_demoResponseDto) {
  int i;
  if (_demoResponseDto->code != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor code of type api_ns0_demoResponseDto...\n");
#endif
    freeXsIntType(_demoResponseDto->code);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor code of type api_ns0_demoResponseDto...\n");
#endif
    free(_demoResponseDto->code);
  }
  if (_demoResponseDto->msg != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor msg of type api_ns0_demoResponseDto...\n");
#endif
    freeXsStringType(_demoResponseDto->msg);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor msg of type api_ns0_demoResponseDto...\n");
#endif
    free(_demoResponseDto->msg);
  }
}
#endif /* DEF_api_ns0_demoResponseDto_M */
