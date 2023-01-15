# AZP

AZP, 'Bash Script' ilə yazılmış Azərbaycanın yerli Linux paket meneceridir.

Çalışdırmaq üçün:

```bash
sudo azp
```

## AZP Əmrləri:

| Əmr                        | İzah                                                              |
| -------------------------- | ----------------------------------------------------------------- |
| `azp -i <package.azp>`     | Paket quraşdırır                                                  |
| `azp -r <application>`     | Quraşdırılmış paketi qaldırır                                     |
| `azp -a <application>`     | Proqram haqqında məlumat verir                                    |
| `azp -pl`                  | Quraşdırılmış proqramların siyahısını yaradır                     |
| `azp install <package>`    | Depodan aket quraşdırır                                           |
| `azp update <application>` | Quraşdırılan proqramı güncəlləyir                                 |
| `azp upgrade`              | AZP'ni son versiyasına güncəlləyir                                |
| `azp -dpl`                 | Depoda hansı proqramların hansı kateqoriyalarda olduğunu göstərir |
| `azp -azpd`                | Rəsmi AZP Deposu əlavə edir                                       |
| `azp -azpdo`               | Rəsmi olmayan AZP Deposu əlavə edir                               |
| `azp -azpa`                | AZP haqqında məlumatı çap edir                                    |
| `azp -apc`                 | AZP paketlərini və arxiv datasını təmizləyir                      |
| `azp -reinfo`              | Quraşdırılan proqramın info fayllarını yenidən yığır              |
