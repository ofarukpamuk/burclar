class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;

  get burcTarihi => this._burcTarihi;

  get burcDetayi => this._burcDetayi;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(
    this._burcAdi,
    this._burcTarihi,
    this._burcDetayi,
    this._burcKucukResim,
    this._burcBuyukResim,
  );

  @override
  String toString() {
    return 'Burc(_burcAdi: $_burcAdi, _burcTarihi: $_burcTarihi, _burcDetayi: $_burcDetayi, _burcKucukResim: $_burcKucukResim, _burcBuyukResim: $_burcBuyukResim)';
  }

  @override
  bool operator ==(covariant Burc other) {
    if (identical(this, other)) return true;

    return other._burcAdi == _burcAdi &&
        other._burcTarihi == _burcTarihi &&
        other._burcDetayi == _burcDetayi &&
        other._burcKucukResim == _burcKucukResim &&
        other._burcBuyukResim == _burcBuyukResim;
  }

  @override
  int get hashCode {
    return _burcAdi.hashCode ^
        _burcTarihi.hashCode ^
        _burcDetayi.hashCode ^
        _burcKucukResim.hashCode ^
        _burcBuyukResim.hashCode;
  }
}
