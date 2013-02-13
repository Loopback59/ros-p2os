"""autogenerated by genpy from p2os_driver/PTZState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PTZState(genpy.Message):
  _md5sum = "1f71ce2a42b32376ea869eb051358045"
  _type = "p2os_driver/PTZState"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 pan
int32 tilt
int32 zoom
bool relative

"""
  __slots__ = ['pan','tilt','zoom','relative']
  _slot_types = ['int32','int32','int32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pan,tilt,zoom,relative

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PTZState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pan is None:
        self.pan = 0
      if self.tilt is None:
        self.tilt = 0
      if self.zoom is None:
        self.zoom = 0
      if self.relative is None:
        self.relative = False
    else:
      self.pan = 0
      self.tilt = 0
      self.zoom = 0
      self.relative = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3iB.pack(_x.pan, _x.tilt, _x.zoom, _x.relative))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.pan, _x.tilt, _x.zoom, _x.relative,) = _struct_3iB.unpack(str[start:end])
      self.relative = bool(self.relative)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3iB.pack(_x.pan, _x.tilt, _x.zoom, _x.relative))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.pan, _x.tilt, _x.zoom, _x.relative,) = _struct_3iB.unpack(str[start:end])
      self.relative = bool(self.relative)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3iB = struct.Struct("<3iB")
