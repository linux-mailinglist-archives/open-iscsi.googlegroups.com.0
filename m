Return-Path: <open-iscsi+bncBC755V5RXMKBBYML46CAMGQER3YR56Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FE7379AE5
	for <lists+open-iscsi@lfdr.de>; Tue, 11 May 2021 01:46:42 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id f20-20020a0caa940000b02901c5058e5813sf13890513qvb.23
        for <lists+open-iscsi@lfdr.de>; Mon, 10 May 2021 16:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BRp9fW22Q/kiDrMa9Ko42D3g/Ox5xWxH8w+Tukvs2Jo=;
        b=lSsfdFHaOq2nGC90QVNNDA9c5iDbodKsFjpF7UbGT9X9TdKfE3NqG/+ex2yuDbhjs5
         VwsZ6nvfEgwYvT+wGPwkTGdP4Hh8740WFGUJrWS84Phz2XUcrJ8edkLCuP4oLu2MkTHN
         aleVl8qn4LYT6cOwyzeKKsgBeHnd9mAAn3krqu/ZvMdW4AVbbeaBh7yZwngVvNtGwzbY
         EWsDWYWLCssUiNxGALEDaHq8UKLSAqOCGBmiMFBJRQJXYhsdgzQbOFW369ldvzqf97aK
         /v/ZYvZslV+I+N3DRTilIj3JjNLukTdLvpRO0vyEpvf+JUyspasxQZSikTvEv9hG5UqM
         dohw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BRp9fW22Q/kiDrMa9Ko42D3g/Ox5xWxH8w+Tukvs2Jo=;
        b=vXLg1AHwerfbk/Jhimzv4IsR7rfYLcXY5yz+KoUo9DsQPkJ7EkmjZcEX34flaFukdK
         PHWk6LMoF9lqa0Strp+A2nHuHKLhTEyLSC3iaQOct3WmF0ECDHyYLYYwmFpLvqSsS6YK
         4ksGqx/RgZimFTCbrHuo+sUvVJm+4nHwLPQa/CFBGUeQGAp0RnXx8LAX1rqPsG65qmCi
         f0QiIMF3gOc8kmozIk2QjUrDcYOH2PTRYOpY0t7RD1c+/jGenGnIqO0EZBmzfZst6UHD
         /gp7duOubHjp2xU4gt7+dPmq6auc9ZIAmvXrgVZ0y9rXV6hvhRet9a+7nCqQo+NboAlu
         V8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRp9fW22Q/kiDrMa9Ko42D3g/Ox5xWxH8w+Tukvs2Jo=;
        b=mkHH6phYGirI9Dz0zo4ixHkDLaYZMEygnIeCYfHFfPQau59J05TonsC81FqDlwRdBT
         DUlm1cIMpWvHqdT0Gx3wfc7CV1UPy9PbajuzBWscUs6HZLpIzeN/S0A7oCHgnsIoeJi9
         BWbaC8o3R69GEkN3w8rYvV7FO1vUUt8didM5vrZ3ANOjdYqmUnqI2v2LZee4R7vCYB+C
         n3RC4xoNhhBp3949yQgLljSExN6EW7uTAVkK2eArEfn/td5KEXNJqiwsGY02r/d5y6sc
         bHY5YYAz+3F1oc7CGUyFGy9K22QbqzkPGkFGaBbhtkU18wbnwCFszKFBkUMPpCvvUmQS
         K+uA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Jljgrhwppn7u03O4nSXK+Pw0BRG4ZP/jdAvEzWchyFmCdZIqM
	N5TpnuGtVYQr4VMfNA2618k=
X-Google-Smtp-Source: ABdhPJxtgXC1q7a11LZe2oLirB6PlctqxDQie/rbLPb+RTmi6wovFIhHdpXQz9C/nvJqkok1viiv4g==
X-Received: by 2002:ae9:e518:: with SMTP id w24mr10110300qkf.490.1620690401310;
        Mon, 10 May 2021 16:46:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls7216127qtg.11.gmail; Mon, 10
 May 2021 16:46:40 -0700 (PDT)
X-Received: by 2002:ac8:7fcc:: with SMTP id b12mr24497969qtk.343.1620690400698;
        Mon, 10 May 2021 16:46:40 -0700 (PDT)
Date: Mon, 10 May 2021 16:46:40 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <43e49037-b88c-4954-aa42-54e6807ff259n@googlegroups.com>
Subject: Shouldn't firmware nodes be marked as "onboot", for consistency?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3620_1791365981.1620690400113"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_3620_1791365981.1620690400113
Content-Type: multipart/alternative; 
	boundary="----=_Part_3621_998398278.1620690400113"

------=_Part_3621_998398278.1620690400113
Content-Type: text/plain; charset="UTF-8"


Hi All:

I'm working on getting iBFT (firmware) booting working well using 
open-iscsi with dual paths and DM/multipathing, and I noticed something.

When you run "iscsiadm -m discovery -t fw", it creates node database 
entries for your firmware targets. But it sets "node.startup", and 
"node.conn[0].startup" to "manual" instead of "onboot", even though 
open-iscsi treats these entries like "onboot", since they are based on 
firmware.

I find it a little more consistent if they are marked as "onboot". A simple 
path in iscsiadm would change this. Any objections?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.com.

------=_Part_3621_998398278.1620690400113
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>Hi All:</div><div><br></div><div>I'm working on getting iBFT (firm=
ware) booting working well using open-iscsi with dual paths and DM/multipat=
hing, and I noticed something.</div><div><br></div><div>When you run "iscsi=
adm -m discovery -t fw", it creates node database entries for your firmware=
 targets. But it sets "node.startup", and "node.conn[0].startup" to "manual=
" instead of "onboot", even though open-iscsi treats these entries like "on=
boot", since they are based on firmware.</div><div><br></div><div>I find it=
 a little more consistent if they are marked as "onboot". A simple path in =
iscsiadm would change this. Any objections?<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/43e49037-b88c-4954-aa42-54e6807ff259n%40googlegroups.com</a>.=
<br />

------=_Part_3621_998398278.1620690400113--

------=_Part_3620_1791365981.1620690400113--
