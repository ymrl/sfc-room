#coding:UTF-8
module SFCRoom
  module Buildings
    Alpha      = :alpha
    Omega      = :omega
    Mu         = :mu
    Kappa      = :kappa
    Epsilon    = :epsilon
    Iota       = :iota
    Omicron    = :omicron
    Lambda     = :lambda
    Theta      = :theta
    Delta      = :delta
    Tau        = :tau
    Psi        = :psi
    Phi        = :phi
    Gamma      = :gamma
    Sigma      = :sigma
    Nu         = :nu
    Zeta       = :zeta
    Xi         = :xi
    Eta        = :eta
    Lounge     = :lounge
    GuestHouse = :guest_house
    Others     = :others

    List = [
      Alpha,
      Omega,
      Mu,
      Kappa,
      Epsilon,
      Iota,
      Omicron,
      Lambda,
      Theta,
      Delta,
      Tau,
      Psi,
      Phi,
      Gamma,
      Sigma,
      Nu,
      Zeta,
      Xi,
      Eta,
      Lounge,
    ]
    JapaneseName = {
      Alpha      => 'アルファ',
      Omega      => 'オメガ',
      Mu         => 'ミュー',
      Kappa      => 'カッパ',
      Epsilon    => 'イプシロン',
      Iota       => 'イオタ',
      Omicron    => 'オミクロン',
      Lambda     => 'ラムダ',
      Theta      => 'シータ',
      Delta      => 'デルタ',
      Tau        => 'タウ',
      Psi        => 'サイ',
      Phi        => 'フィー',
      Gamma      => 'ガンマ',
      Sigma      => 'シグマ',
      Nu         => 'ニュー',
      Zeta       => 'ゼータ',
      Xi         => 'グザイ',
      Eta        => 'イータ',
      Lounge     => '学生ラウンジ',
      GuestHouse => 'セミナーゲストハウス',
      Others  => 'その他',
    }
    RomanChar = {
      Alpha      => 'A',
      #Omega      => '',
      Mu         => 'M',
      Kappa      => 'k',
      Epsilon    => 'e',
      Iota       => 'i',
      Omicron    => 'o',
      Lambda     => 'l',
      #Theta      => '',
      #Delta      => '',
      Tau        => 't',
      #Psi        => '',
      #Phi        => '',
      #Gamma      => '',
      #Sigma      => '',
      #Nu         => '',
      Zeta       => 'Z',
      #Xi         => '',
      #Eta        => '',
      #Lounge     => '',
      #GuestHouse => '',
      #Others  => '',
    }
    GreekChar = {
      Alpha      => 'Α',
      Omega      => 'Ω',
      Mu         => 'Μ',
      Kappa      => 'κ',
      Epsilon    => 'ε',
      Iota       => 'ι',
      Omicron    => 'ο',
      Lambda     => 'λ',
      Theta      => 'θ',
      Delta      => 'Δ',
      Tau        => 'τ',
      Psi        => 'Ψ',
      Phi        => 'Φ',
      Gamma      => 'Γ',
      Sigma      => 'Σ',
      Nu         => 'Ν',
      Zeta       => 'Ζ',
      Xi         => 'ξ',
      Eta        => 'η',
      #Lounge     => '',
      #GuestHouse => '',
      #Others  => '',
    }
    Aliases = {
      Alpha      => %w|本館 事務|,
      Omega      => %w||,
      Mu         => %w|メディア|,
      Kappa      => %w||,
      Epsilon    => %w||,
      Iota       => %w||,
      Omicron    => %w||,
      Lambda     => %w||,
      Theta      => %w|講堂|,
      Delta      => %w||,
      Tau        => %w|院棟 大学院棟 ロフト|,
      Psi        => %w||,
      Phi        => %w||,
      Gamma      => %w|体育館 アリーナ|,
      Sigma      => %w|生協 タブリエ レディバード|,
      Nu         => %w|Docomoハウス ドコモハウス DNPハウス 舘内ハウス 森アトリエ IIJハウス デザインスタジオ|,
      Zeta       => %w|情報基盤センター|,
      Xi         => %w|ものづくり工房|,
      Eta        => %w||,
      Lounge     => %w|サブウェイ|,
      GuestHouse => %w|ゲストハウス|,
      Others     => %w||,
    }
    SFSNumber = {
      Kappa   => "1",
      Epsilon => "2",
      Iota    => "3",
      Omicron => "4",
      Lambda  => "5",
      Delta   => "6",
      Tau     => "7",
      Zeta    => "8",
      Nu      => "9",
      Omega   => "10",
      Others  => "11",
    }
  end

  module Floors
    N1 = "n1"
    N2 = "n2"
    S1 = "s1"
    S2 = "s2"
    IIJHouse      = 1
    DocomoHouse   = 2
    DNPHouse      = 3
    TateuchiHouse = 4
    MoriAtelier   = 5
  end
end
