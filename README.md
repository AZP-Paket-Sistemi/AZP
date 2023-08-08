# AZP

AZP, Azərbaycanın yerli Linux paket meneceridir.
Versiya: 5.0

Çalışdırmaq üçün:
```bash
sudo azp
```

## AZP Əmrləri:

| Əmr                                | İzah                                                              |
| ---------------------------------- | ----------------------------------------------------------------- |
| `1) azp -i [package.azp]`          | Paket quraşdırma                                                  |
| `2) azp -r [application]`          | Proqramı silmək                                                   |
| `3) azp -r [application1] [application2] -h`| Seçilən proqramı avtomatik silmək                        |
| `4) azp -a [application]`          | Proqram haqqında məlumat                                          |
| `5) azp -pl`                       | Quraşdırılmış proqramların listəsini yaradır                      |
| `6) azp -pl -listfile`             | Quraşdırılmış proqramların listəsini yaradır və seçilən istiqamətə kopyalayır         |
| `7) azp install [package]`         | Depodan proqramlar quraşdırma                                     |
| `8) azp upgrade`                   | AZP'ni son versiyasına güncəlləyir                                |
| `9) azp -stversion`                | AZP versiyasını görmə                                             |
| `10) azp -dpl [category]`           | Depodakı kategoriyalarda hansı programların olduğunu göstərir     |
| `11) azp -azpd`                    | Rəsmi AZP Deposu əlavə etmə                                       |
| `12) azp -azpdo`                   | Başqa bir rəsmi olmayan AZP Deposu əlavə etmək                    |
| `13) azp -azpa`                    | AZP Haqqında                                                      |
| `14) azp -apc`                     | AZP paketlərini və log'ları təmizləmə                             |
| `15) azp -apc -h`                  | AZP paketlərini və log'ları avtomatik təmizləmək                  |
| `16)  azp -apc [package.azp]`    | Seçilən paketi silir              |
| `17)  azp -apc -list`     | Paket listəsini göstərir                                                   |
| `18) azp -reinfo [application]`    | Quraşdırılan proqramın məlumat fayllarını yenidən yığır                  |
| `19) azp update [application]`     | Quraşdırılan proqramı güncəlləmək                  |
| `20) azp -azpsrc-build [source_package]`      | AZP mənbə paketi quraşdırma |
| `21) azp -azpsrc-cazp [source_package]` | AZP mənbə paketi (.azps) normal AZP paketinə (.azp) çevirmə |
| `22) azp -azpsh-build [source_script]`         | AZP mənbə skriptini (.azpsh) normal AZP paketinə (.azp) çevirmə           |
| `23)  azp -azpsh-build [source_script] -ins` | AZP mənbə skriptini (.azpsh) normal AZP paketinə (.azp) çevirmə və quraşdırma  |
| `24) azp -depoinfo`  | AZP depo məlumatlarını görmək                                                     |
| `25) azp -add-architecture [arch]`      | Qeyd olunmuş arxitekturanı oxuma                             |
| `26)  azp -add-architecture -auto`   | Komputer arxitekturasını oxuma və qeyd etmə                    |
| `27) azp -archrd`                  | Qeyd olunmuş arxitekturanı oxuma                                 |
| `28) azp -azpweb [webfile]`         | .azpweb faylını oxuyur, paketi yükləyir və quraşdırır                   |
| `29) azp -pinfo [application]`       | Yükləməzdən əvvəl paketin təfərrüatlarına baxın                                 |
