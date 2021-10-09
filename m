Return-Path: <open-iscsi+bncBAABB4HBS6FQMGQEQYEOG6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C0E42ADDA
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:32:50 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id p9-20020a05621421e900b003830bb235fbsf623629qvj.14
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070769; cv=pass;
        d=google.com; s=arc-20160816;
        b=eW22LQw9iTG3ucScoV3P6bdypdNh7Jv7aZyoxJaFo7FuZygQDEr09cSH4zaIrff/r2
         xOtMmypPC11EiLe3k7jWB9V3pkde/jdvChcL6zNf1CKLjNC7o98VUZCtorg0Z7oQVDyk
         0H7CAPI7jjr6sPdwme3m3yHOjofqFCNcgSuDtw25vd5yaYk98/zdS5BYxqluX92Cu6Gj
         HWv0h1wDSnErV/L1wxFHu+QVdcNevNiQVYFYiUSepYKSwV0aRmEUfFa3ujdQ77waYj48
         22e9q/D03ZUD/6EIlo50vVfyoVqROxuuAhzssyVRuif8nz9NV2vQXNHhAw5JTGkF1r29
         twVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=fehkEcSPPQ5oZOHdBdQrztY3E4x75rS3ris3MxDu2a4=;
        b=R1FBKA6vk9tk0fhmPmcM4vbQpFaLdTVtRIIEZW6K0ji+mbwzAKKPSrAU4Fe9m0/Vbj
         GSmTy5CldiEFQ6QqtiKsA1opeWgl0aEI5921vXAh9tSlwQ3Rkn1N9Ttdv4QC+fpRdxSx
         Bid7x52fHQiex7o56Hoe6xN9/wbMtzn2H/2Q4lUT5iao2pdeO4f5pP4Nr2Kamhmk6LOM
         ypfCYZuXxy/yiQsxMR67V+9nbj1/pWxqYtMKE+ROhdDdQNpHwf2u2UAherz28P2gDKvG
         1KuXiJNqwomYQMp2LxgMiN9IA1oKzHVoXxOWxuiJw07L9Y+VimVU/+UAUAuA8XFIPbUJ
         /UhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.179 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fehkEcSPPQ5oZOHdBdQrztY3E4x75rS3ris3MxDu2a4=;
        b=arhSavAwKVOBmG4T6lJZWrW17TLKJusbjEvh7PbmpN+FtXGuwOGRNF5HaatKzqaKsl
         kBRbwvAQvtiOgTQ0pKRt44WdOBD70sRhj06QhfgIOsq7dQ96NEWAljwkq8YSWFUENV01
         7Z4NhJ6n+mlRfetv7/XsT85rItYgPk0B95WPfH8qpvct0ot0rfx9t2VTckXEhDSAARht
         y+NDPZXtWbrWJL5TO02MnjQo9LDu9HWRsgpsBciiVdOi6Kuk5ZnBsEmHeNJ0LVI3n50o
         qojM0aus86hAz+bSH8y/ERrlKzKfHvH+vv78ijumzTtj2k9o+AxJevqt9CNGlMowjdqj
         FHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fehkEcSPPQ5oZOHdBdQrztY3E4x75rS3ris3MxDu2a4=;
        b=bat7fndiEBWZncxKssT+WeBg+v8SZwfiDha09088v1CnuvhjuBSx9u4w5nAZn9YKyg
         ee4SqNxaDKvttVk9d9rcaGc0k5UqPy4/+jyU0Sb5xM9TXvgfCa5WuVTdsfGXA+rKhfIb
         goMMitXR/cR4Au6lG6Xc3U7rv18szSqjV4yhdX7wo1gyuCXNyo2z0Dnbkh3zaK4tFUFZ
         tGN6vttYNEi84dlE5batzU5d6jvbferY6OjsTmcRw3oCopluPmQEaMm0jkdcW3a0Eep5
         wx3gj3mnNquIEq8ra/FaIr60jcReA4oEBeTAvxAOQ8VGEJTcpeCFeId6vvFIW/x5+XLF
         B2zg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531oYZWUFvoZG1Fq8FIEJzzf7z9wkK7uG+F/P+BucYKmIv6F0tMI
	kgCCJQACe245Ia2Vpvs+aPw=
X-Google-Smtp-Source: ABdhPJy9Gi90TK1iWetexTKx5l5cFgvMuDs9fY+PAsS5lbnzv0xjUSx+QUf2wjgFbvGthRElZper9g==
X-Received: by 2002:a0c:f311:: with SMTP id j17mr32433879qvl.17.1634070769219;
        Tue, 12 Oct 2021 13:32:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a749:: with SMTP id q70ls102690qke.1.gmail; Tue, 12 Oct
 2021 13:32:48 -0700 (PDT)
X-Received: by 2002:a37:6d2:: with SMTP id 201mr20940653qkg.62.1634070768658;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
Received: by 2002:a05:620a:1537:b0:433:47e6:2f29 with SMTP id af79cd13be357-45ef4751ed3ms85a;
        Fri, 8 Oct 2021 21:35:24 -0700 (PDT)
X-Received: by 2002:a05:6214:c64:: with SMTP id t4mr13507207qvj.5.1633754124207;
        Fri, 08 Oct 2021 21:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633754124; cv=none;
        d=google.com; s=arc-20160816;
        b=fEBDW77Rd8zwtxZ9Fz16g9rErSDnARcj3Is/m3ftpuXhU3F0iTfUImlqNDxuEqin08
         QIUGE4RQ+PB655axsO2xC9iGja32Xs7UrolPx+PSJrfSy/CdOJGzXmnEoiJQgbRN7nLr
         w5k4ypCUNrD+wYiHxkK2vRTOj+mTzBQQTy0kl+6GBr+MJ098HZFLATXKYKay9WYsFBrg
         qC/DQmtn8J7pB+cyjUW7jXyJcM/eR8sGvIcUxtAqrqC/mOWIom4m0ff7A5irC6MK3mCM
         pTvjlyVq78mRjap1lHvAL7GKGjtIVr2s37+7lqCf6zsb8LenSrgiRU02rouu96cWDvGO
         052Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=mXkAP9yW3oHQv/2u7/8l6ygxlKGUHY4JH4uzjP1cZD0=;
        b=TASvtdCLCK8R866ekaLEfI7FD9kVcs1z2DgQACOkd/0NOV594x2bPXarDr0vVjFpuf
         5EtpQL9/XPfyqHrjyTUvBigVR4XoqW48r/nbm99DHDf+jWxVJmM80e5+xkvkec46COUL
         numsZ5mN/GdByQT9FSrMasT5bFyuIiZ4bhZ5eBAOZdNYdUn31/sXB92fu8oPd38yVvH/
         8iUbv69w5FXFa65Sjz8W7UC+4v4ycUce3Pb7vbkNfXrIcVG1odoEv/o2FwC44wla0RDM
         omR2nijG215XdrFBpyb04oT03rxeAijz6aiuHnEV2rugf3sctdt8DuS0wHr00hKoguf3
         5MMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.179 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Received: from smtp179.sjtu.edu.cn (smtp179.sjtu.edu.cn. [202.120.2.179])
        by gmr-mx.google.com with ESMTPS id b125si78710qkf.0.2021.10.08.21.35.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Oct 2021 21:35:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.179 as permitted sender) client-ip=202.120.2.179;
Received: from mta04.sjtu.edu.cn (mta04.sjtu.edu.cn [202.121.179.8])
	by smtp179.sjtu.edu.cn (Postfix) with ESMTPS id 34EFE100888DA;
	Sat,  9 Oct 2021 12:35:18 +0800 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mta04.sjtu.edu.cn (Postfix) with ESMTP id 083D0185F5239;
	Sat,  9 Oct 2021 12:35:18 +0800 (CST)
X-Virus-Scanned: amavisd-new at mta04.sjtu.edu.cn
Received: from mta04.sjtu.edu.cn ([127.0.0.1])
	by localhost (mta04.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id jtfBzz9G5XvD; Sat,  9 Oct 2021 12:35:17 +0800 (CST)
Received: from mstore105.sjtu.edu.cn (unknown [10.118.0.105])
	by mta04.sjtu.edu.cn (Postfix) with ESMTP id C0ABB1805DA80;
	Sat,  9 Oct 2021 12:35:17 +0800 (CST)
Date: Sat, 9 Oct 2021 12:35:17 +0800 (CST)
From: Guo Zhi <qtxuning1999@sjtu.edu.cn>
To: Joe Perches <joe@perches.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <1054322431.5783331.1633754117686.JavaMail.zimbra@sjtu.edu.cn>
In-Reply-To: <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn> <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
Subject: Re: [PATCH] scsi scsi_transport_iscsi.c: fix misuse of %llu in
 scsi_transport_iscsi.c
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.166.42.95]
X-Mailer: Zimbra 8.8.15_GA_4125 (ZimbraWebClient - GC91 (Linux)/8.8.15_GA_3928)
Thread-Topic: scsi scsi_transport_iscsi.c: fix misuse of %llu in scsi_transport_iscsi.c
Thread-Index: XXuAZWa/hbD+Z5L5JVAn1uE58Jskmw==
X-Original-Sender: qtxuning1999@sjtu.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.179 as
 permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
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

I will send a V2 patch.

----- =E5=8E=9F=E5=A7=8B=E9=82=AE=E4=BB=B6 -----
=E5=8F=91=E4=BB=B6=E4=BA=BA: "Joe Perches" <joe@perches.com>
=E6=94=B6=E4=BB=B6=E4=BA=BA: "Guo Zhi" <qtxuning1999@sjtu.edu.cn>, "Lee Dun=
can" <lduncan@suse.com>, "Chris Leech" <cleech@redhat.com>, "James E.J. Bot=
tomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.=
com>
=E6=8A=84=E9=80=81: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org=
, "linux-kernel" <linux-kernel@vger.kernel.org>
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: =E6=98=9F=E6=9C=9F=E5=85=AD, 2021=E5=
=B9=B4 10 =E6=9C=88 09=E6=97=A5 =E4=B8=8A=E5=8D=88 11:14:36
=E4=B8=BB=E9=A2=98: Re: [PATCH] scsi scsi_transport_iscsi.c: fix misuse of =
%llu in scsi_transport_iscsi.c

On Sat, 2021-10-09 at 11:02 +0800, Guo Zhi wrote:
> Pointers should be printed with %p or %px rather than
> cast to (unsigned long long) and printed with %llu.
> Change %llu to %p to print the pointer into sysfs.
][]
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
[]
> @@ -129,8 +129,8 @@ show_transport_handle(struct device *dev, struct devi=
ce_attribute *attr,
> =C2=A0
>=20
> =C2=A0	if (!capable(CAP_SYS_ADMIN))
> =C2=A0		return -EACCES;
> -	return sysfs_emit(buf, "%llu\n",
> -		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
> +	return sysfs_emit(buf, "%p\n",
> +		iscsi_ptr(priv->iscsi_transport));

iscsi_transport is a pointer isn't it?

so why not just

	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);

?

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/1054322431.5783331.1633754117686.JavaMail.zimbra%40sjtu.edu.cn.
