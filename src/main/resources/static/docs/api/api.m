#import "api.h"
#ifndef DEF_APINS0DemoResponseDto_M
#define DEF_APINS0DemoResponseDto_M

/**
 * (no documentation provided)
 */
@implementation APINS0DemoResponseDto

/**
 * (no documentation provided)
 */
- (int *) code
{
  return _code;
}

/**
 * (no documentation provided)
 */
- (void) setCode: (int *) newCode
{
  if (_code != NULL) {
    free(_code);
  }
  _code = newCode;
}

/**
 * (no documentation provided)
 */
- (NSString *) msg
{
  return _msg;
}

/**
 * (no documentation provided)
 */
- (void) setMsg: (NSString *) newMsg
{
  [newMsg retain];
  [_msg release];
  _msg = newMsg;
}

- (void) dealloc
{
  [self setCode: NULL];
  [self setMsg: nil];
  [super dealloc];
}
@end /* implementation APINS0DemoResponseDto */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface APINS0DemoResponseDto (JAXB) <JAXBReading, JAXBWriting, JAXBType>

@end /*interface APINS0DemoResponseDto (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation APINS0DemoResponseDto (JAXB)

/**
 * Read an instance of APINS0DemoResponseDto from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of APINS0DemoResponseDto defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  APINS0DemoResponseDto *_aPINS0DemoResponseDto = [[APINS0DemoResponseDto alloc] init];
  NS_DURING
  {
    [_aPINS0DemoResponseDto initWithReader: reader];
  }
  NS_HANDLER
  {
    _aPINS0DemoResponseDto = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_aPINS0DemoResponseDto autorelease];
  return _aPINS0DemoResponseDto;
}

/**
 * Initialize this instance of APINS0DemoResponseDto according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of APINS0DemoResponseDto to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "code", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setCode: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "msg", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}msg of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}msg of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMsg: __child];
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if ([self code] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "code", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}code."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}code...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self code]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}code...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}code."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}code."];
    }
  }
  if ([self msg]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "msg", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}msg."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}msg...");
#endif
    [[self msg] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}msg...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}msg."];
    }
  }
}
@end /* implementation APINS0DemoResponseDto (JAXB) */

#endif /* DEF_APINS0DemoResponseDto_M */
#ifndef DEF_APINS0DemoRequestDto_M
#define DEF_APINS0DemoRequestDto_M

/**
 * (no documentation provided)
 */
@implementation APINS0DemoRequestDto

/**
 * (no documentation provided)
 */
- (NSString *) name
{
  return _name;
}

/**
 * (no documentation provided)
 */
- (void) setName: (NSString *) newName
{
  [newName retain];
  [_name release];
  _name = newName;
}

/**
 * (no documentation provided)
 */
- (int *) age
{
  return _age;
}

/**
 * (no documentation provided)
 */
- (void) setAge: (int *) newAge
{
  if (_age != NULL) {
    free(_age);
  }
  _age = newAge;
}

- (void) dealloc
{
  [self setName: nil];
  [self setAge: NULL];
  [super dealloc];
}
@end /* implementation APINS0DemoRequestDto */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface APINS0DemoRequestDto (JAXB) <JAXBReading, JAXBWriting, JAXBType>

@end /*interface APINS0DemoRequestDto (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation APINS0DemoRequestDto (JAXB)

/**
 * Read an instance of APINS0DemoRequestDto from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of APINS0DemoRequestDto defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  APINS0DemoRequestDto *_aPINS0DemoRequestDto = [[APINS0DemoRequestDto alloc] init];
  NS_DURING
  {
    [_aPINS0DemoRequestDto initWithReader: reader];
  }
  NS_HANDLER
  {
    _aPINS0DemoRequestDto = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_aPINS0DemoRequestDto autorelease];
  return _aPINS0DemoRequestDto;
}

/**
 * Initialize this instance of APINS0DemoRequestDto according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of APINS0DemoRequestDto to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "name", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}name of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}name of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setName: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "age", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAge: ((int*) _child_accessor)];
    return YES;
  }

  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if ([self name]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "name", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}name."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}name...");
#endif
    [[self name] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}name...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}name."];
    }
  }
  if ([self age] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "age", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}age."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}age...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self age]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}age...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}age."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}age."];
    }
  }
}
@end /* implementation APINS0DemoRequestDto (JAXB) */

#endif /* DEF_APINS0DemoRequestDto_M */
