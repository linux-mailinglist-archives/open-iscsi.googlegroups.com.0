Return-Path: <open-iscsi+bncBDZIFAMNOMIMPPWD6YCRUBE627UNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BC41E7A15
	for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 12:09:12 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id a20sf390612ejt.19
        for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 03:09:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590746951; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBbvefsD0s7cDgTRujY0utNZp+ZE3Q+BwmOG5qkqE/hMd09R9JY7sEKLpsHigpMNxs
         M2jtlgw+Z/8+SOsPWbwSFbDPi59UT+5ZnluvHPTEUwtRGBkvf2jwhzsoHa2IAzXL0+zL
         eJtwL30rx0cE0tBTOhGora11vyOwVmTTW/jhtDKJivvdf/OAEXqLCYiumAzds5w7iPvO
         Uix9/W1yni62Rqau6CL8lfa9mpJ/rLXxROZWEtwrTUuU+MZR3xMWCTUakfUirgEWUgxF
         HX2eo02zORhSSed5BhRxlyOFV5T/cGU8HUdTz08ocKjY/4xnxZhNNMA1fuzyxa7WB37I
         KuVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:autocrypt
         :from:to:subject:cc:sender:dkim-signature;
        bh=dt+WSzn+v+pbldai0viqr83fnLdrQLXgq/dLIyLyobc=;
        b=dQ8Sz6q3F8ECESwQR1xIQVltcr6VnluVys0ov0U9A8yCN1bceozbaJXWzLKNY/aack
         hqDgpLt6iCypcMC3PsRobrg+5AEq5r5VfGxvWoBMclgnNB3lP1W76ZS+JyiD27SfRO67
         382H7+9OYqHtAt7BoEf3rMTaxKaloi8dayOaNvkHbUDjwBNjZY5Zglxe1r1fQ6rG3NdG
         Mci8VCKLBtvvWRJw07EU8fx1oGgKvUd5qkCNsoa3BKcBJL8pxM2TlEPtsBnPgmLCtFwK
         9ANemQ+cE7u+hQfrB1DeqHQ964grDz/mNnGaRGwQ+ki+/7oQloLz9SB9P+y0PX6TubGL
         DPcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:cc:subject:to:from:autocrypt:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dt+WSzn+v+pbldai0viqr83fnLdrQLXgq/dLIyLyobc=;
        b=OY1JYO2hhyjSTX/p3+Cx9Ky6AdYAJzWweXkENC6MxPKh9gOvHRRY9T+5+rfBHeqvs6
         YvXLUt3nKNM5fI+cWjzVcdG1N/dmPq229Lp8/au1+DIFi+0KJ5GLpRpjaVyrPyFzSUH6
         L8utP11aH5gHpgKb4ANbDenQy1l/g0JFOrpbX7Q8p3HWminfvL+Qg72yXkdC3qzGEDOH
         WdHMs1/PdiqgBmt97vXjd6uDg3DYMbS+YCCkRLIgW1d5HcwQHjYuhjIoNqsEU7+Hm+/D
         TWKJHWV9FtqMsP8kNXEwFhWliVhBaME62Lq2Pvxpy4v1AB3EPH125mnAZbZJTgB3OeY7
         UOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:cc:subject:to:from:autocrypt:message-id
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dt+WSzn+v+pbldai0viqr83fnLdrQLXgq/dLIyLyobc=;
        b=p7ofXIACDExhPIDFe9ZuWB1MQqNblr5I2OyXMgKTRpNQtjKMtBZZEAQwkKzZlh/MRr
         FHmFKJIeteVJnYObQTEbzZKk5nl/GAfn8lMTFrTjbzxi1z0bAfBspploUTrVtPdo1Cuk
         yGlhYQZsvylkkvO6P7ITD3aTbKbFdmR1UuZQaWexOqVsOTFXdO1lx5vOJNHPKQPtJiFU
         Rnx0SEsENfudzeY2TJf/KaZSsru5P0Iq3VSR8bu1jpFxJGtcP+MdhN1sJlUyUN/r/msI
         eY4xXFyA8XUGaFBMNmFwtVEqkETzO9IFAs0Xa0ei327aKFyDaJET1hKNLuVR0G5lM8o/
         JF5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ip9ebHlun+QV4iFEHBOnEzveVES8wMIAf0TCYGy9xNmKzFKk0
	1aNzadnF3vuftpKvfgesvXk=
X-Google-Smtp-Source: ABdhPJx6g3k/7bcf5ntet3EhIolsKWwma4FzwRXFqq4YqGiy3nxrghZF+FFKMPGVk+nDMfIn25Vg4w==
X-Received: by 2002:a50:bf03:: with SMTP id f3mr7680480edk.368.1590746951736;
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:907:40c3:: with SMTP id nv3ls2396488ejb.0.gmail; Fri, 29
 May 2020 03:09:11 -0700 (PDT)
X-Received: by 2002:a17:906:5243:: with SMTP id y3mr7365462ejm.193.1590746951203;
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590746951; cv=none;
        d=google.com; s=arc-20160816;
        b=mn4gUEF3SVPSG4CJFBf2yEYgxDuuPSBYyOppYdxvES2lrh5+w6HW3m09xtlHFJb3DL
         sdp9Z5CTW+Glhi9mB5NSn2KWxu2auEU3/37XActhXzeLSRnI8fOryf0JfyDLJP2k7hNK
         zctXVQqtuSOaBPmChwxrxkDh9NCqbwHvqY4xKPLQeIm9iSkft9GmHFQXeahcQJmAQAr2
         O9vNq09uzegA9IR0l3yd/sHvwZf2CX5UiWShZ658cCdlmmy2Jgr/sO90lR2e2KyX6M5d
         UfDIqAzpNDK7+nZ5BrHlYYP9pExbwvbAwdsUsp/xOesC7DSwz5v1jxcRmqR6DDqwdHRn
         4Zag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:autocrypt:from:to:subject:cc:dkim-signature;
        bh=jy7y8vOcBrgPChMqfGqD3R29gwneLZ1VGdrOx07UdoA=;
        b=X58XdXIRyw3gH26g7vyqwN2c/vC1IYdNKoJNpbUMSMdqajYzw3cbRkv8Dp+PjBlz+A
         ai15HguMtiWfcCoHbpNVB+QXwtKtyGqUQG/sV0bzs6uGNjL5DkZGQnc8zF56VLAxey+j
         xWshgWRRFspiClnUxApjbkriLYHPmHDwXkVLkSKHQVI77s1tlLtYSz0r9KpkVOxlY0m3
         Uxp0auNBRa3l3DUDIpyKVcivdJh2n8fefy0F9WJvlaSKTPGxP4G2bAwy/F7MNi0Fq7PG
         gnVVHcSZ+xPXbSVBtGHOIACpfiCs2YmdZyxr7gJi0OZbo7SMmFBve2KP1r0sXoqgXjpc
         x5ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.17.11])
        by gmr-mx.google.com with ESMTPS id r19si228019eja.1.2020.05.29.03.09.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 03:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) client-ip=212.227.17.11;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.165.0]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MThAi-1jVmFA1dmi-00QSzc; Fri, 29
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
Message-ID: <62ff53e5-32d0-0440-045d-881350b2e6cd@web.de>
Date: Fri, 29 May 2020 12:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:vTRUWehU/DHrU2DUP28btpGrWnuMd4+h88H42tvoTy7k7vS2EBT
 Qv4RGT1H8WhAv09pN2Vv7dfrOyACh5W78AqXOUXvYF+xnls6zkdwTCvb+ijWQLVumrMRHQ+
 OD8BxTsNLhlNTnypHCnzdtBWZ7Qs0VdrUEjaRYeCC9y7fKtaw16x3TCANhvcWhPrc8Vv1ZW
 6pOcwkhXXRzmmHi29R1tA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OjKtTZt2LZA=:gFbMUDbwyEXMlFgjGDyX50
 /9SxR9hYBTgcpEfSwF9eGESnzJwFBRCYRVE4XcDLoeCUo1LjXu8CSNlTfCz/tHFJiAcsZB/+u
 S6qVNYteMGN/AaZC0dDUtRHZfjB0SkwjsJf/avzg8HVOttN/WvL94rYgHshEXBFLVFCRBkQ2f
 RelljmOgqD4qO1qoz/D+o/HJRP3Hvy7Rx2z04Xh0ckIZBzNZYUHvuvI7A9O9UR0uNMdsCpDyl
 sI992X54pmIjxpN1gGQvrA/iygWWT96INjmwVTbmlcDmgkizIpTIM3KEbmJAhVF7bVC1UXXrH
 1fLd0lUPLXm9EnoqjzGoELYshy2d0GITzTHGe09nrQqHsV7gxo3sAg146JiqXRuSKSuJVbYlr
 kGy4GYqC8tc6N//cPn5q7iplpGjYgW60VCzrb/CJvLxrHmu7NWDPV2x8ep2yq9bdqhNwNbS1W
 M7BCAIWlMZVHazpInfdvmuQPiMQWw+1nfE+v+2HG7k8aAlMlKnMZop95JLn27xKvP6/An2eHr
 Pwm5Ruz6mdPaMtmrprzI3HBsbwiFGPBInOyPKl/ygB7N/YvPoDxnC+FG+lwp9mv7x2teJ+qEU
 X6xh6Kt87NzzxOWhCbZSzbylrMa1RAyAv8iFlFMgVdafAGZmtdX+SjHKOYKxeMYBztfGJQ4R+
 gpuG9qEmR9abfX0ugEKPtxOGeM7RhWm/5jODF8tPBxz53uWoTtQSEfKM7wl6QWu110rHsjNZi
 fSiARd3Fo2O0yuKjXCdgzy8UNhzlhrtKbqk9GW7/rPYkpCt9JMkzogyn4HfG3OgxasXpqzUsa
 2j64W+NcL+IWTutsu8W6YlAECtBoWW9LJbck9M9KXQSooQ/2wqGuWLcv2TjaWgkWDwinvL4bq
 g/azpLs7aj6G6KizPOHyrgVpuRia5u7+zKsKtE1Rl6/umSoLs+iN2Kjty7+uF4v9lxZWUZew9
 yHxAzm7ZqeoYH5AjBCSFpd06zTKbi4dfkrYm2+dzrTALWaiU5k8MAvCbfK53S/frIcHDgQsdk
 kxcDluJXFODjIao832mWIR8LDUoIl8Xofs8EziJHsr9UQLrrj3tNTycbl6H2ZFb6b51Z5YMQD
 ccMHwyL+lr9dIdVl+x2JIjzhHkzMH7RTy9rwIBXNBWoHr1Ovq7f+yPo+EvkSoS+WuMiQQGusL
 P5jDxghChO+E3OHRFYv58RIa3TXU/lskl/oEDEehAXHdRLj7qVKJF1/qwxr0wtFPUk0bsdwpt
 l8RCjSUveVWvi9qc1
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=DPkyrqJ3;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as
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
open-iscsi/62ff53e5-32d0-0440-045d-881350b2e6cd%40web.de.
