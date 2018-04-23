#
# 
#
# Generated by <a href="http://enunciate.webcohesion.com">Enunciate</a>.
#
require 'json'

# adding necessary json serialization methods to standard classes.
class Object
  def to_jaxb_json_hash
    return self
  end
  def self.from_json o
    return o
  end
end

class String
  def self.from_json o
    return o
  end
end

class Boolean
  def self.from_json o
    return o
  end
end

class Numeric
  def self.from_json o
    return o
  end
end

class Time
  #json time is represented as number of milliseconds since epoch
  def to_jaxb_json_hash
    return (to_i * 1000) + (usec / 1000)
  end
  def self.from_json o
    if o.nil?
      return nil
    else
      return Time.at(o / 1000, (o % 1000) * 1000)
    end
  end
end

class Array
  def to_jaxb_json_hash
    a = Array.new
    each { | _item | a.push _item.to_jaxb_json_hash }
    return a
  end
end

class Hash
  def to_jaxb_json_hash
    h = Hash.new
    each { | _key, _value | h[_key.to_jaxb_json_hash] = _value.to_jaxb_json_hash }
    return h
  end
end

module EnunciateHelpers
  LAMB_CLASS_AWARE = ->(_item) do
    java_clazz = _item['@class']
    clazz_array_parts = java_clazz.split('.')
    short_clazz = clazz_array_parts.pop
    clazz_package = clazz_array_parts.map do |e| e[0] = e.first.capitalize; e end.join("::")
    clazz = clazz_package + "::" + short_clazz
    Object.const_get(clazz).send(:from_json, _item)
  end
end


module Com

module Sdcuike

module Gradlelearning

module Controller

  # (no documentation provided)
  class DemoRequestDto 

    # (no documentation provided)
    attr_accessor :name
    # (no documentation provided)
    attr_accessor :age

    # the json hash for this DemoRequestDto
    def to_jaxb_json_hash
      _h = {}
      _h['name'] = name.to_jaxb_json_hash unless name.nil?
      _h['age'] = age.to_jaxb_json_hash unless age.nil?
      return _h
    end

    # the json (string form) for this DemoRequestDto
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this DemoRequestDto with a json hash
    def init_jaxb_json_hash(_o)
        if !_o['name'].nil?
          _oa = _o['name']
            if(_oa.is_a? Hash)
              @name = EnunciateHelpers::LAMB_CLASS_AWARE.call(_oa) if _oa['@class']
              @name =  String.from_json(_oa) unless _oa['@class']
            elsif (_oa.is_a? Array)
              #an array(of hashes hopefully) or scalar
              @name = Array.new
              _oa.each { | _item | 
                 if ((_item.nil? || _item['@class'].nil?)rescue true)
                   @name.push String.from_json(_item)
                 else
                   @name.push EnunciateHelpers::LAMB_CLASS_AWARE.call(_item)
                 end
               }
            else
                @name = _oa
            end
          end
        if !_o['age'].nil?
          _oa = _o['age']
            if(_oa.is_a? Hash)
              @age = EnunciateHelpers::LAMB_CLASS_AWARE.call(_oa) if _oa['@class']
              @age =  Fixnum.from_json(_oa) unless _oa['@class']
            elsif (_oa.is_a? Array)
              #an array(of hashes hopefully) or scalar
              @age = Array.new
              _oa.each { | _item | 
                 if ((_item.nil? || _item['@class'].nil?)rescue true)
                   @age.push Fixnum.from_json(_item)
                 else
                   @age.push EnunciateHelpers::LAMB_CLASS_AWARE.call(_item)
                 end
               }
            else
                @age = _oa
            end
          end
    end

    # constructs a DemoRequestDto from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end

module Com

module Sdcuike

module Gradlelearning

module Controller

  # (no documentation provided)
  class DemoResponseDto 

    # (no documentation provided)
    attr_accessor :code
    # (no documentation provided)
    attr_accessor :msg

    # the json hash for this DemoResponseDto
    def to_jaxb_json_hash
      _h = {}
      _h['code'] = code.to_jaxb_json_hash unless code.nil?
      _h['msg'] = msg.to_jaxb_json_hash unless msg.nil?
      return _h
    end

    # the json (string form) for this DemoResponseDto
    def to_json
      to_jaxb_json_hash.to_json
    end

    #initializes this DemoResponseDto with a json hash
    def init_jaxb_json_hash(_o)
        if !_o['code'].nil?
          _oa = _o['code']
            if(_oa.is_a? Hash)
              @code = EnunciateHelpers::LAMB_CLASS_AWARE.call(_oa) if _oa['@class']
              @code =  Fixnum.from_json(_oa) unless _oa['@class']
            elsif (_oa.is_a? Array)
              #an array(of hashes hopefully) or scalar
              @code = Array.new
              _oa.each { | _item | 
                 if ((_item.nil? || _item['@class'].nil?)rescue true)
                   @code.push Fixnum.from_json(_item)
                 else
                   @code.push EnunciateHelpers::LAMB_CLASS_AWARE.call(_item)
                 end
               }
            else
                @code = _oa
            end
          end
        if !_o['msg'].nil?
          _oa = _o['msg']
            if(_oa.is_a? Hash)
              @msg = EnunciateHelpers::LAMB_CLASS_AWARE.call(_oa) if _oa['@class']
              @msg =  String.from_json(_oa) unless _oa['@class']
            elsif (_oa.is_a? Array)
              #an array(of hashes hopefully) or scalar
              @msg = Array.new
              _oa.each { | _item | 
                 if ((_item.nil? || _item['@class'].nil?)rescue true)
                   @msg.push String.from_json(_item)
                 else
                   @msg.push EnunciateHelpers::LAMB_CLASS_AWARE.call(_item)
                 end
               }
            else
                @msg = _oa
            end
          end
    end

    # constructs a DemoResponseDto from a (parsed) JSON hash
    def self.from_json(o)
      if o.nil?
        return nil
      else
        inst = new
        inst.init_jaxb_json_hash o
        return inst
      end
    end
  end

end

end

end

end