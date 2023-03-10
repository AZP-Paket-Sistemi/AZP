# AZP

AZP, Azərbaycanın yerli Linux paket meneceridir.
Versiya: 4.0

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
| `10) azp -dpl`                     | Depodakı kategoriyalarda hansı programların olduğunu göstərir     |
| `11) azp -azpd`                    | Rəsmi AZP Deposu əlavə etmə                                       |
| `12) azp -azpdo`                   | Başqa bir rəsmi olmayan AZP Deposu əlavə etmək                    |
| `13) azp -azpa`                    | AZP Haqqında                                                      |
| `14) azp -apc`                     | AZP paketlərini və log'ları təmizləmə                             |
| `15) azp -apc -h`                  | AZP paketlərini və log'ları avtomatik təmizləmək                  |
| `16) azp -reinfo [application]`    | Quraşdırılan proqramın info fayllarını yenidən yığır              |
| `17) azp update [application]`     | Quraşdırılan proqramı güncəlləmək                                 |
| `18) azp -azpsrc-build [source_package]`    | AZP mənbə paketi quraşdırma                                                   |
| `19) azp -azpsrc-cazp [source_package]`     | AZP mənbə paketi (.azps) normal AZP paketinə (.azp) çevirmə                   |
| `20) azp -azpsh-build [source_script]`      | AZP mənbə skriptini (.azpsh) normal AZP paketinə (.azp) çevirmə və quraşdırma |
| `21) azp -azpsh-build [source_script] -ins` | AZP mənbə skriptini (.azpsh) normal AZP paketinə (.azp) çevirmə və quraşdırma |
| `22) azp -depoinfo`                | AZP depo məlumatlarını görmək                                     |
| `23) azp -add-architecture [arch]` | Arxitektura əlavə etmə                                            |
| `24) azp -add-architecture -auto`  | Komputer arxitekturasını oxuma və qeyd etmə                       |
| `25) azp -archrd`                  | Oxunmuş arxitekturanı qeyd eləmək                                 |
