Return-Path: <open-iscsi+bncBDA4XKVK6ECBBNOE2SNQMGQEKCKRPHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D562C6BC
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:35 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id h8-20020a05620a284800b006b5c98f09fbsf18199567qkp.21
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620854; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6p29mNNeS93X/YAzYzBZBln3FfSSRS1iVg8ix2UkJoShwThmi8BS1SpW/Kz+VAyvG
         iyzFEbdZp3+W1f3QA+3b90gpzG89U8fc7mqNqZVFO4ciBdCyhYQcPKfhmBjYBmCtaiWm
         jm+QIwTabimCeqsJKwCEe8czOR7EJe5SQFAa4VFrH1PyXa3K4gnp8gNAVZcDUOH28R0e
         H/1Fq6cjLGECfkXbH64LGtNkLaCXBwDZWIje0jZpRE96kizGroeTEFOlYU+9H+An7/pS
         ox7UtuCn+zCyRjyBIoa03CVulShCBTE+9D8gPxUeL2X+8U/HjrFrMtCZ1lTkv+eAmxFU
         kpDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:sender:dkim-signature:dkim-signature;
        bh=uxa4rDF4SafcBy37CMmq4Q29IiB8dQWH8YPqmi8/HKA=;
        b=aYeDFy69RNQ65x/VQ6XFkmQsqp9LW8lHo9BLTqGczvVr4MbbOdswLkU+0EzcZWbedM
         Ox0bG3tRFo3VvML9cnDxgHfruJYJnlze1def4CrUg0EyQMTlPytStCQhE6CWq+K3jVyt
         gS9Re4AP3ispvtsYKS9kULQXJmcEaR8pPnOepyMrc1XzAVPe2Cog2+JU/vugo9Q19mLC
         aV/z75fNaNYzPR6JnFt3awrm8MqHW417X2+VaoEqmef1hGFv6h7ndywD7kbpHTxALl9E
         +wDDfoO9UOsyGXmKw9ItReOukE1n1IilyRH1NWB8dZHHmFOviEqzR/oZpMLSAjqbRuRa
         Ih8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SPADowM0;
       spf=pass (google.com: domain of topsyharm022@gmail.com designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=topsyharm022@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxa4rDF4SafcBy37CMmq4Q29IiB8dQWH8YPqmi8/HKA=;
        b=pzf2CE0u/XvYZWp/0M7QkMceVgfcNwTR4J9IDMyx8NqBCNT9ZC593zS04gbOeRU/e5
         aLYroyNfk/CPUiC3Ba80QS+9LtfLisPgK7OjFc3EbyTx1VlGAKAOfF3V+PQfgv6MG1i7
         wkuWnBrML7nT+bqeefT4vKH0zPehhh3tgsbgXpyTvG7He0BkuMSFewT/etTCnR7uTD9r
         41y4tqB/uQgK6rzeQVwogCMZUiVVZKZTL3INasdr9HSaYqiiynF1cRT3Tfls3UkFmPsW
         /bmUvHQMBus2BVRZkPhDlwxHi/MEKc6PTxcPxUFTzeKCANY8ENDsmOwJ2D3ra5YrD4iX
         v9sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxa4rDF4SafcBy37CMmq4Q29IiB8dQWH8YPqmi8/HKA=;
        b=Ge3OV+ssIPFh5I4XxBCIV/SAQ41ImskGfgNt+c4I/Tc2hpuVhxI9zmNMTtKRrkjzzq
         5k9UXLqzFa7HOe3A+JaKqwRmr/YeI/QOnezWvufbb/UDJMgxCK62KQ4cq2BqESHQC2x2
         C3IP8VhlMd3EAzPP0qUrv/diGwZUCeYHGs0/ycxjhLtrS5RTfpGHJcGA+v+06QfTJB76
         bAutjlsjoAAqvQ7uzS0AFzv6DYGG7GyknOR7feWUHj0hgvXocf54MWX5IAqjNUaQilBa
         pyAsTTAXEy/fTJ3x2NxG5C3GoGoYmJZVoNqIW6lMSudEngR6wgrUH6LB/66IiQ8X98Ww
         d+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uxa4rDF4SafcBy37CMmq4Q29IiB8dQWH8YPqmi8/HKA=;
        b=vRXJgBdQhY0iHDF7txa0qclGIyYXSAisi0eDF1VTVpf0mLphHLuwu6QectSGAWKDgV
         j6xQKlGWveTlNIeAZRtkW+NZPGRaVWmxjVAP6Ub1Uys1qENFH+5peXp3QmIC4FhDg9Yj
         YRFDcjyK4v/LkZGQUC1vtxIUTSjoYySqVo1x9GmPBGWt2b/v/7kUZ4JBnJHliguya+CE
         ngKdh1Juqnqz4kzEgwjMSn9tybHSn0AVE0ko28DEtu1rvKprzte+vRkjfQnh1ugkCkqj
         dhejH5YvS2O61mcA8IHhh5w49YizRow2+swScrOT+L/75awicREu4neGZVaqqNnOfwLN
         /oag==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmJIeL7sTNit0nCRDfZ/zUzyVw/E5Gr2CZx7st4L1BXlU5/HBFa
	NFlY2EGuPAFyzoDwY1ub4Vs=
X-Google-Smtp-Source: AA0mqf79VL0V/pEw8fJivw6r10HDktn31XZo1/7Ww+m8DqILiGGxn6LimS/xwfl7S1Djtzv+jsv00A==
X-Received: by 2002:ad4:42ca:0:b0:4c6:67f8:426d with SMTP id f10-20020ad442ca000000b004c667f8426dmr5687307qvr.0.1668620854636;
        Wed, 16 Nov 2022 09:47:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:f003:0:b0:4bb:d57b:e27c with SMTP id z3-20020a0cf003000000b004bbd57be27cls8453631qvk.4.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:33 -0800 (PST)
X-Received: by 2002:a05:6214:17c3:b0:4bb:9658:d4d0 with SMTP id cu3-20020a05621417c300b004bb9658d4d0mr22247972qvb.37.1668620853292;
        Wed, 16 Nov 2022 09:47:33 -0800 (PST)
Received: by 2002:a05:620a:3715:b0:6fb:3884:e10a with SMTP id af79cd13be357-6fb3884e396ms85a;
        Fri, 11 Nov 2022 02:23:40 -0800 (PST)
X-Received: by 2002:a67:d51c:0:b0:3a9:fda6:8a5f with SMTP id l28-20020a67d51c000000b003a9fda68a5fmr416945vsj.60.1668162220095;
        Fri, 11 Nov 2022 02:23:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668162220; cv=none;
        d=google.com; s=arc-20160816;
        b=aFcxsJdShzIaItCgjxz3GAYHnyfwovyl8CqXNSLu6k4vVOYJAR2vaGU3wOPuhz5R0C
         mLR2fEZ5BZIqE+iPuGDYBUwFDXZzuwLE8th7e4APeQ0i0UbExI3HtLeQNtGjHjjEAvgf
         9M0BcUjnbLt4isvHoA8kGK+NV5zPFkJ0TyxExozG4kSIRkB/2Owlf7B/2U5xxtg2fHEY
         6fEbNUwwUCz/ryip7GV9YzmMnH/JpQJjk0UUaZlzshpL+miM18Q5QLyi9iHN8+iKnSwr
         wdaWB+ZcD5+BFujTng+Tq/KGr4U9jdj2FA+A4W+Lod02cPK5FF8snK0JrzVzXxNkxJwV
         U43A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=yhAoyMbG56Usd8vlAftNpiJvdzJmrFbMjNd3Ahok5E0=;
        b=VTwH2an/nWea6cqMTEqh0ANxx0hS+3dyPq58Kef4iwlHxsidwPWR4c5JA8BEhyOOv9
         f14f67a9ETkeYQudydpIvZQ6vmjuV3MASYfrHY/z/K8XpRdDr/vHlMcTgYF/IT0tIgMa
         HwJF0+4m5WIMVpPKU8OIn6GKPZOyQql2Dfuu5Xe+nzMbG6c51Jeus1XFM0jL+nXehdM5
         6SvM/5MQNesmGimQ+gJ84vlQB7lYfsMZd3SZUfxFqmnMigjws+7zHcShG1XoKwLvaeFA
         pOywJ4MC0UA4PFo5e0guYLr7bUS8g02C5iIi+0PWvnP5/UBVW7FxOCkDp6ISzrtLNBqC
         sbmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SPADowM0;
       spf=pass (google.com: domain of topsyharm022@gmail.com designates 2607:f8b0:4864:20::932 as permitted sender) smtp.mailfrom=topsyharm022@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com. [2607:f8b0:4864:20::932])
        by gmr-mx.google.com with ESMTPS id ay6-20020a056130030600b00414ee53149csi383298uab.1.2022.11.11.02.23.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 02:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of topsyharm022@gmail.com designates 2607:f8b0:4864:20::932 as permitted sender) client-ip=2607:f8b0:4864:20::932;
Received: by mail-ua1-x932.google.com with SMTP id i16so1232012uak.1
        for <open-iscsi@googlegroups.com>; Fri, 11 Nov 2022 02:23:40 -0800 (PST)
X-Received: by 2002:a9f:35f3:0:b0:40c:2306:5a2 with SMTP id
 u48-20020a9f35f3000000b0040c230605a2mr362891uad.78.1668162219710; Fri, 11 Nov
 2022 02:23:39 -0800 (PST)
MIME-Version: 1.0
From: "Mrs. Aisha Al-Qaddafi" <ahishagadafi8@gmail.com>
Date: Fri, 11 Nov 2022 02:23:24 -0800
Message-ID: <CAFLRYaVPS6Wx5D+TUns=60xTbb6XWy8=0niHtoF8cd5ZNDF53Q@mail.gmail.com>
Subject: Dear Friend
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000889fcf05ed2f4838"
X-Original-Sender: ahishagadafi8@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=SPADowM0;       spf=pass
 (google.com: domain of topsyharm022@gmail.com designates 2607:f8b0:4864:20::932
 as permitted sender) smtp.mailfrom=topsyharm022@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--000000000000889fcf05ed2f4838
Content-Type: text/plain; charset="UTF-8"

Greetings

I came across your e-mail contact prior to a private search while in need
of your assistance. I am Aisha Al-Qaddafi, the only daughter to Former
President of Libya Col. Muammar Al-Qaddafi. Am a Widow with Children.

I have investment funds worth Twenty Seven Million Five Hundred Thousand
United State Dollar ($27.500.000.00 ) and i need a trusted investment
Manager/Partner because of my current refugee status, however, I am
interested in you for investment project assistance in your country, may be
from there, we can build business relationship in the nearest future.

I am willing to negotiate an investment/business profit sharing ratio with
you based on the future investment earning profits.

If you are willing to handle this project on my behalf, kindly reply
urgently to enable me to provide you more information about the investment
funds.

Your Urgent Reply Will Be Appreciated

Best Regards
Aisha Al-Qaddafi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAFLRYaVPS6Wx5D%2BTUns%3D60xTbb6XWy8%3D0niHtoF8cd5ZNDF53Q%40mail.gmail.com.

--000000000000889fcf05ed2f4838
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings <br><br>I came across your e-mail contact prior =
to a private search while in need of your assistance. I am Aisha Al-Qaddafi=
, the only daughter to Former President of Libya Col. Muammar Al-Qaddafi. A=
m a Widow with Children.<br><br>I have investment funds worth Twenty Seven =
Million Five Hundred Thousand United State Dollar ($27.500.000.00 ) and i n=
eed a trusted investment Manager/Partner because of my current refugee stat=
us, however, I am interested in you for investment project assistance in yo=
ur country, may be from there, we can build business relationship in the ne=
arest future.<br><br>I am willing to negotiate an investment/business profi=
t sharing ratio with you based on the future investment earning profits.<br=
><br>If you are willing to handle this project on my behalf, kindly reply u=
rgently to enable me to provide you more information about the investment f=
unds.<br><br>Your Urgent Reply Will Be Appreciated<br><br>Best Regards<br>A=
isha Al-Qaddafi<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAFLRYaVPS6Wx5D%2BTUns%3D60xTbb6XWy8%3D0niHtoF8cd5ZND=
F53Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CAFLRYaVPS6Wx5D%2BTUns%3D60xTbb6XWy8%3D0niH=
toF8cd5ZNDF53Q%40mail.gmail.com</a>.<br />

--000000000000889fcf05ed2f4838--
