// src/utils/buffer.ts
export function toArrayBuffer(u8: Uint8Array<ArrayBufferLike>): ArrayBuffer {
  // Si déjà sur un ArrayBuffer *et* la vue couvre tout le buffer → on peut réutiliser
  if (u8.buffer instanceof ArrayBuffer &&
      u8.byteOffset === 0 &&
      u8.byteLength === u8.buffer.byteLength) {
    return u8.buffer as ArrayBuffer;
  }
  // Sinon on copie dans un nouveau ArrayBuffer standard
  const copy = new Uint8Array(u8.length);
  copy.set(u8);
  return copy.buffer;
}
