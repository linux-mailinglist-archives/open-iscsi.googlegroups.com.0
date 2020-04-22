Return-Path: <open-iscsi+bncBC6MFJWO34DBBAV7772AKGQEYLRANMI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B501B3735
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 08:09:07 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id j19sf799220ejs.1
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 23:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587535746; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWjHAY/5C+hUvQlY86Kn1Cb1dbP6qCeZkVzWxlEkhBdxt5juLgXZ6ia6FxfzkaPGRK
         hE7GIvaSsJtX/iN7S42PMjW3n+imE7tJ1xp5RVLq60y/9tXJ6rJh6DzGYCVMVSOiWQfk
         JquvL8lGPDdMJ73JFmCYq2bkCwoVvRnmY9RQMj/R6pKH2hPHT04n0c04GT7uCO6A8l55
         /NkUXxIrAl9SdXhJgxE1BBsSgWNyOxjJO00SD76wSy7BIOhrRoWSSqMNDw38F2IJs2CY
         B3RvfTjQ9RXmoaqS7iiHRm+VW2YDbMVz1vI/2jX/VABcYpcRrpoQmsw5iOz7SezdPoQN
         /H9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:to:from:date:message-id:sender:dkim-signature;
        bh=QUVs0BKPo6Kyir9/BlIrjRPiNZG735qsb3nDAGU7RfQ=;
        b=MrLYkW1KycWhokNCMmo4Q0aWB6WyniZH0aevap7zyrUv4xj2cVoa6Mm3dLLA8FWci/
         G8vQokOWToG03MI8hTLhDePd9IC2wvf+rTXR/xTKe7RDsUfdlgvs+oXy2rU9E/DWAlQc
         lDI0D+FO9TRnFd97uydP2i8KyDAC0qFE0y8TN7M49VwmfnJlt1zgrOrak1oLsnJWx64J
         6Iv/uVrk969OckALTic/lmgC0XtORbhtBaFkmtdDgUnIIZVUwFrZLv3cNpbqhzTO+woa
         pouP2mvLwepfeL4g9OgMOwOpQGw0QYGd7ztm42G6DuP1dg3kClMdyZvbfCRM+oXnL0zc
         S3YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QUVs0BKPo6Kyir9/BlIrjRPiNZG735qsb3nDAGU7RfQ=;
        b=o7E0wTn2s06QwqBxgtcXPa2i97uduZAzZGHZhnhDHaiqaiuL5uVfDNzFqefyu70yeJ
         fvG1pEX8HrF9gMOX+d+/9oswsDhd/znE99NsXmUkzRXiuBj4qHBPLAskiw7q5D6mH72U
         ieGZUxcjdxjGpPEeHjrfKX0LT8vU/KlcQrbki2nReHEEtYR1WsBiy6//JxsW6HS6KlT8
         VOOqOqsJBLm2+sd5nS+HCYRJT8wc321UJw2O6/YZJGk6KJSzx0DNyiYhvNfxCBE/zguH
         dwhYYAJC77hdwUPSvthf8zdF1NEd46naGfv2ryw3osEOqqceSEfFouFdnuAy7BixWRWi
         eXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QUVs0BKPo6Kyir9/BlIrjRPiNZG735qsb3nDAGU7RfQ=;
        b=d1f+ErhG6Wv+lH50BJAd2iIGVtXjVHcVdp+W5D7srcklEQHwM7EpBIupOQLpvChzva
         k0T2rQVYvbBwdllarTVfKzI958b0BD6gAiGld60B/j3VnGoISP/LwGcpWMzgYbJdre/F
         XSz+dZ2dnrZI00Rii4uWME/Cf4gBG5TlOIRiHmhGdQo/yBt4cigVj63mbU6klCMdMz9N
         nsBBVfIn/MvUjSMscK1MyJ51kpxPpRjn12SUVxvIOuy3zABmY3XBrmjb1HsqOU9/0+Nq
         iSQGqM5UFrrUUDrH9c3eJXeKr/bIiNYgOBTRGZKvbg2b5IXZd8MRKgvFTj1zrbokfDXF
         yeDA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuY3s66N9lvxFATvXKNP4KZGysCqPJrGhCxEwYa1RdmageoLlyDQ
	IbXIOzX7Grnd9ryzqV20754=
X-Google-Smtp-Source: APiQypLOXqyEe3dhXfB7L73wCc52tFtLgbOQu+sToK+QTYi5FPrk0dBDuMQ4ijJTkwT9j698M/Z0Fw==
X-Received: by 2002:a05:6402:1713:: with SMTP id y19mr22502120edu.40.1587535746773;
        Tue, 21 Apr 2020 23:09:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:1a58:: with SMTP id bf24ls779430edb.2.gmail; Tue,
 21 Apr 2020 23:09:06 -0700 (PDT)
X-Received: by 2002:a05:6402:356:: with SMTP id r22mr22715199edw.3.1587535746254;
        Tue, 21 Apr 2020 23:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587535746; cv=none;
        d=google.com; s=arc-20160816;
        b=F0oXBDqRUHSScXODDREfZaoUsXDajMKhyMCqxGAEuHBgBi5v8sZMUwHRke/luJQJtx
         MG/HO77DKf+MJctSdpl1QvQsRskPZocwigtdCqY22QIcu14Z74i4RU3mPAaqOwZG+WiV
         gPdYeVGbHOwuq50FnAoxb2RKOy2gkWTTKtolrM1lLp9UUhizWXADiGJXip1j5DIsEfm7
         Q6PDChJqc0QRUC9NkNRhjkRIYwmun800t79O1ubbGRFBxoxfLCSFrneA5zrdHzk0VlsV
         BJ8pUDhjVtAQkmhOg9dzOmbBCzTfJomfRKJ7K6b2KAwWefZaoty0FXODEWdBRP3ALfTm
         oDIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=NrB07p5LEDLSbp8gjg5yk6+zzuJG1svX+sh/n3YFugI=;
        b=FxCnLHf2MVso5BwC/vRcG2GaoGATS+/EGTyDFhFxlTWlADlO3+3hzLMDk6ys35kr13
         x2FxXyV480h+r9Bd8Jn9R4KSt3OTvr+uxkYbYtlYVeqecto3MamMr5H9ax4jEt9JZ52P
         dveo7htmCkXi4EUXr9A+2OmR/47+JeXriulhItNAKP4L9VBR6C1ffbDqlzagwnTpVvRV
         lztLRv4Lnw6uPf9rcfq5p0OtDOCyZz3z3ehrQMm5Rk+PK3+itCnure5FZR8y/RVLOu9L
         xCJ8mJ7/Z0u+euCmcjhITE1PghysxkhZysmLioOVhsrBuzH6VUEK7DvlUViCjC4dg692
         vJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [194.94.157.147])
        by gmr-mx.google.com with ESMTPS id i2si276443edn.2.2020.04.21.23.09.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 23:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) client-ip=194.94.157.147;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 571756000050
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 08:09:05 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 41BBD600004D
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 08:09:05 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 22 Apr 2020 08:09:05 +0200
Message-Id: <5E9FDF7F020000A1000387BE@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Wed, 22 Apr 2020 08:09:03 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: udev events for iscsi
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
 <29812_1587485183_5E9F19FE_29812_432_1_CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6fw@mail.gmail.com>
In-Reply-To: <29812_1587485183_5E9F19FE_29812_432_1_CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f6gsiqdjmEeYz6fw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Donald Williams <don.e.williams@gmail.com> schrieb am 21.04.2020 um 18:=
06
in
Nachricht
<29812_1587485183_5E9F19FE_29812_432_1_CAK3e-EbA-d6NeDETJ0EMHeAw3HGko_uCB_f=
6gsiq
jmEeYz6fw@mail.gmail.com>:

[...]
>=20
> The default setting for Linux is 30 seconds. This can be verified using t=
he
> command:
>=20
>  # for i in $(find /sys/devices/platform =E2=80=93name timeout ) ; do cat=
 $i ; done
> 30 30

Two remarks on the command above:
1) the command contains an en-dash instead of a minus, so you get funny err=
or
messages like this:
find: =E2=80=98=E2=80=93iname=E2=80=99: No such file or directory
find: =E2=80=98timeout=E2=80=99: No such file or directory

2) Even with the correct command, I get no matches here (SLES12)

However I see matches within
/sys/devices/pci* and /sys/class/firmware/timeout

[...]

Regards,
Ulrich

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5E9FDF7F020000A1000387BE%40gwsmtp.uni-regensburg.de.
