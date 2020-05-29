Return-Path: <open-iscsi+bncBDZIFAMNOMIMPPWD6YCRUBE627UNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C12961E7A14
	for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 12:09:11 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id b65sf494705wmb.5
        for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 03:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590746951; cv=pass;
        d=google.com; s=arc-20160816;
        b=eymmR9qclh/Kq/c0OGbDCxyUF90g/oIZX9vldsqwJJ4wyJMcb4UIBt+UU/LYwvnflZ
         xWxGP4uEdHATh0V9ZCdTd+eZQeWd/LXGS0ljSAX1MDjZGpKCWCSbec+lEMz/rUx3y0yZ
         bJa4IbHQQMueJL+eGGbuALH5pT1Gqpq7yG86hrYkssy7iHU+BydnP4ufGrWF2pvBm9fe
         DA6GUQx8ZBlceKNW9tjyDzS7nxRTD6lk0zkIVgCqdb5ALdhVT1O8Kmh4tQnkC7mKFfK8
         Z3YODKaZaMLntT/XgBJIykX1TjU0HN+SiOjjUrl1a9narGMyYZZUQyE710AdFO/x2nnH
         57aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:autocrypt
         :from:to:subject:cc:sender:dkim-signature;
        bh=iHv/KGTK/JSNJpMNIwqa4G0iaqhZe81fvuHgd79VFHQ=;
        b=vRluPmwUthK6AhH9yDgbhxzNSXDpLHvz+BGhRn1bnzlcGdpyd/OQbnP8JuGng4m8Pb
         Z5x6RBlXh3ReA4W4WKlARdiEv9lIhuRrMw1MURFVf8DJj+U1MX/qveKLyLhO07GB4eyL
         Z+7aL7X/nsOToHE1beffjDkUPIADLQ4W/MmBJS3KKInPX/tKhiYHzWuEQeR2bHe7oJ4V
         T9oPKzG4C+nLyP4dRqQbA2Wx3BfBqDzJhnoRU5ycvx/vKHqgu6h4JpkP22RFItHgJq+0
         7Fezzvsmqw939IjxgKwQO5OKj7MsdphkM8rvLK//HzOK6Q/hCS9Q9oDnpCrQXv0ymEzR
         PMug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.12 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:cc:subject:to:from:autocrypt:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iHv/KGTK/JSNJpMNIwqa4G0iaqhZe81fvuHgd79VFHQ=;
        b=O4KvJAkFMeVVwCYyIB3J5Qg8n3fgPXEjFMizWQArFXveJfy0bTER1/yuiBPORTbs52
         aCgdNDA6c6pej7KvPBuiO/8kuXaWhGhvXpJj8Yb5JehjrWSqbXtDmfS0fYtQ5zQBSbrw
         Qs5ukvZxErBRjQwe6aITx244ZaG4p/YKrvda9PklRd82jQgSRFSjcDte/mwm4li+Z9J3
         aF7xc6IlYK4IqZCSvDoWel0xKFAm3qbD++PTjlEU3OrK5YPeikXXwEfeQubp4Nb78JG5
         C7eFEC3fx8aQ0g+CirLp367GU8tiupfQl72706JoDLGmnqO64ylSw6nzzc0q4rfPv/+H
         D6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:cc:subject:to:from:autocrypt:message-id
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iHv/KGTK/JSNJpMNIwqa4G0iaqhZe81fvuHgd79VFHQ=;
        b=sPv9ywMD88u4CEkJoAnCSReZNs8vIriHCcEGKR7RmmnfuVKATQ8+jVfvGsOQUkCJRC
         3sT0oIAruPvHNO2J26USRuYkBdq6gH7g1u62CrVEU3+brW1Sq3rbhwPpBeNZeTDxpVLH
         HtwfPMuzDyUfPF6+aEka3Q4x/iAsQ3lCenIuqHtRvAUdZe6/Rz5RQL5jJU97q6ALLKTP
         mEz19NZokufczQzbMVMcCr6IbTWBKehfntaEL7JONEjsVkPklCbs8nzBsN7gTa96IxBh
         1YaRTfCFYRy3/gA0T1hKjiNXy3igM7mdR+AbcT5TpHFinKe35vae0gUh+kCTn4M2XX+i
         ErCQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530x0sxKhwAk26hqLFprLot3hXK+iF5msXVRLOCtPIotPrg+QT6k
	NuGDkxUGI2i1GK0ymyLmDwI=
X-Google-Smtp-Source: ABdhPJyIQeenDvHrk5J+3vN2IQc2zp2vhsVjxDHmiLW69DqwTCUe5Hr6WiG3Wu+BaWp8J22kx4VQ8Q==
X-Received: by 2002:a05:600c:3cf:: with SMTP id z15mr1144297wmd.90.1590746951564;
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls6543319wrc.1.gmail; Fri, 29 May
 2020 03:09:11 -0700 (PDT)
X-Received: by 2002:adf:e749:: with SMTP id c9mr8594634wrn.25.1590746951133;
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590746951; cv=none;
        d=google.com; s=arc-20160816;
        b=KEHfc/5SG631bXWpHgYdcf+IAW4OF1oVAE/T6oqvjNRICKXJ6hPCpl2wsl8hRihvmF
         AvxmCg5wMEGhsoF4UmeD+3Ujsm9BXVdJ/1xcedHCFJzi+0XTuhkPbdoEBx/KP75SyaUS
         w/20qssqFW3Vfex0qo5DxIkp6KpJrF4G73PCkyqHDQr5v4A96UHBnxi4hxVW0dNoJDRN
         QGr4YqjtyY6Oy+oh4aFvkQRcrWTS06Igsr/w5VIB6vogBs8SfjgTILFjV/vv8Gc7iKOd
         /MX9mKJRRir/erTQofXsUeQrHOiO/ootRXYujGEVFT5JjuDXF3zp8gOWPLS2okExD7Mp
         1obw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:autocrypt:from:to:subject:cc:dkim-signature;
        bh=jy7y8vOcBrgPChMqfGqD3R29gwneLZ1VGdrOx07UdoA=;
        b=H0yby3hLM27amSbKKvjoeoA0tbd0R95rudt0/d0UH+/XuyImM8r84BHTJbv0DcjvQ5
         HynxRWjFh31D8FsrmWZW2lBQCq7U1ds5QkYfK3/XOzNK7OdHFcMqjhz6/cpBf6hQPdGq
         ZhPWk816+Hb/IRWoKNJBqh8j9KKF3IiLK/Esz2fr9SBOHVW830kPYdsMBgZW/K+0OzAq
         YWmlasZD9i61aBebPV1hczieH/IkFUE/wXp4LaiKN87WqcuSOHVlO9b1dVsQpAdrN8Z1
         Sn0ypDRUvBGjN9r5vsb+Xxm8rJalU60ANCwADI9/uPBDFPfPVfGKf2RtSS1keShwEmc6
         VJig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.12 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.17.12])
        by gmr-mx.google.com with ESMTPS id m20si400629wmc.0.2020.05.29.03.09.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.17.12 as permitted sender) client-ip=212.227.17.12;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.165.0]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MJnrX-1jPPNl309p-00KJZN; Fri, 29
 May 2020 12:09:08 +0200
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Leech <cleech@redhat.com>, "James E. J. Bottomley"
 <jejb@linux.ibm.com>, Kangjie Lu <kjlu@umn.edu>,
 Lee Duncan <lduncan@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH] scsi: Fix reference count leak in
 iscsi_boot_create_kobj()
To: Qiushi Wu <wu000273@umn.edu>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <e7ff4f24-7708-15a0-5afe-18d50c9622af@web.de>
Date: Fri, 29 May 2020 12:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:UEEr7n3B2NPfGFyeQvVhNqqk0HhusthGYYZtuU6IvnySkAeDNf7
 oINcuU7HB736pBqJIs4bky1uicCExxfA96LYT7tJdwl0JCPAduxavOW8KYtwrShBYZK2Hvx
 UZmEhUR57HnKwlkZs5T9mu5LOzRjxHbxWCoxIyrmcAj0EIzG2mUJQTASHMYwxhzOcgG3hgj
 TWdSioAbjyUtWXJ0oi6tw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pQrpA1KJ3G8=:URVKqtA2JFqvH4LaRD+dl1
 jOKQ5cBbrKB1vhFtwTpChpeU2iTOZ54ftsBqwcA80hmO9ZxNwGmE7JtRGYfUCXjKUKbmpkeZW
 r16yYvq/8XvnpwLx4VW1jGKCp7lKXNs6gEm1sD1bOhNYHdWt/dXXudJTTC2IY04M1LufLsEbI
 O5RMMeOGgVYCAF8Q/GERZyu5w1U4yFw5vkIdMN+HxW0R1qpN80PkDytLspBF22QNgz0hvNUuq
 nY99crpO1Blfj95uTEQIbgfnr6Kd198JdmoRScYtZUTs4XzDmD4rgitXXwlB09tb/A7GMfGAT
 OOb7ETn4hEUfJ93ahFp3lxAdhB6rBjgVB9gckqIFLrT90UFPNQUrZf/YvYT2dFJnak7eFOuWQ
 BkzI5e8hFR47GMXxItXlnwVOHdZUBWApCjVodil74nzqUNFX8NtBeftdahdMqSQh7/daKjacu
 bMfHcQ0wdpgqYm480c70Pwjfy6rcqOE+8x9PQjfFYloyw1SpUfb6qvhNFZOqEpX6B4LnakDJR
 0ekxFUQiKi/ufMOGQEaUYhLfzVr+19Pkj8S0sTt9jWxDdMmhvdvKANmhmf/dJhmtL13esSFTW
 /9zBCMhQQIC/JrQv9trfeYYylU1mNqnD/r0I7c4JysKsYRRdxooJyeiLgBVV2AFcnMwhiShsi
 YQoDIcJLN7kixUs6JcXSD4jqm5dF4z0l59Vb1CU7wsgN9m2dJ7F4Qlx/aSJVGuNKjxz7ZyUYL
 0RA3GwRPeg1cFgeC0lA7JUymD+xUBgJrVCaJETyzm1hbT0xBBq+vVbNYtYcwSdy/4a+e7oBoQ
 oSBBN8mvOOg7rrrMfUv7mfYYae0SNEsCOb5H/I4xclgpMwsS2asd+1tLGRxBkVUQ4B53a9Skf
 BaM1sDEcmY5+g/hgsWJ2aPd45XNPvBMQoxrKYoJbB1T6Jb9SVY2dAW+yB4w4jbBEWE4r8FTOc
 NkU7AuPlkZeMc9wLvBugUe62404JOoNrX/iwsnY06WT+6wi5Pqq0K04TX14jEXkX2EpZ1/iuw
 4H5Q3JgZphoCB2WQHwyZr969NvEsfhBvB6sp8zLRALJsK/Kw59UzbzV6/+Xu1QNoAF5yAjElR
 yY1pfNGhmgRsb9BWXyHazZT/0VvJgRmbHPcjApCDtrctQewItOICzZpgsli8udkqpYfXtjJUn
 VPJfhIAapt4/TXFqu92oaylFG/2juuintE6YMMZE4n2b5kO8aO8vY3si74qI+Bhl49dDTHQCp
 BmBXDh5SzwjVCG81f
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.17.12 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

> kobject_init_and_add() should be handled when it return an error,
> because kobject_init_and_add() takes reference even when it fails.

I find this wording approach improvable.


> Previous commit "b8eb718348b8" fixed a similar problem.

I suggest to omit this information from the commit message.


> Thus replace calling kfree() by calling kobject_put().

How do you think about a wording variant like the following?

   Thus replace a call of the function =E2=80=9Ckfree=E2=80=9D by =E2=80=9C=
kobject_put=E2=80=9D
   because of using kernel objects in the proper way.


Please take another look also at the message field =E2=80=9CTo=E2=80=9D.
Which recipients should be specified there first?

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/e7ff4f24-7708-15a0-5afe-18d50c9622af%40web.de.
