Return-Path: <open-iscsi+bncBAABBW6EXWBQMGQEBO6KQOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B88358E0A
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:06:52 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id z3sf938834oix.11
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912411; cv=pass;
        d=google.com; s=arc-20160816;
        b=R2GPlESOt/ZjbEiYmj0wd0fQU/CPKXlij5R+ETZMQj4Gv09HgqauE+BAhjj3PPnXjT
         28rGFVt2ARbVGewps41BUYSm2F28QdsGmrLD9b1oOsbDH+E3Lz5xWJx70MsmwMIJfDVe
         g4uIUgDUjnF8ISKakstkAVAd5y8Lbu0XbehCWgvpTyUOb1jY1zmnOaw8/1RaIl7mHP2s
         3Mwy20xMqB9LuOh1jpIYB6zQHeRXVCH2epAwLmLLy20k7pn50Pq3bT4XdPNFt1YxAt0Y
         0UOIMwW3PK6/QlWaHNyJPIo/RoaZrDBEFhp/8vd+/rvkJeo5OJSb6ug/hl53ZWNSy9I4
         /MhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=diktvfJZHdJg+vtEhQppXvYjHfgNTgMynZv5gec+FZY=;
        b=B/NbCEaVuiO148Z3LfkjlRjJGGdplClHPic7sPft2WFMGO+8AtInHCsRlN+ypZSvVq
         QYl04lJX7eD8hf/wqP+70iGC3FEBPjg/QYZrOBt6AON+cUYJ6MLPNt/i7XWFd0bMZu6J
         5hz87fVNzjHXO0pP+S17GcN67txw8Oufo5RjjvoF7fh/JQ1Q16xfVtwjD0RpjcZDexni
         qjlvJdwmm3RQNqGJRsThfJvGaowyG+pC2DIeF0sBQY+0tk3Hi8CdTLR3vxzEjrH3tquy
         uUBn7bWpHfn42rBSCGv4/sakzmbEj2PH1Z7fETKqZgzokyY+x0mFkLT3EeYl9CuWwEFZ
         pCqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diktvfJZHdJg+vtEhQppXvYjHfgNTgMynZv5gec+FZY=;
        b=C0A8SHv6K9HmcFjW2RqmQKetFn1xykFBAGTN4nF6SL1qLmRs0PtRHe8G6hoagV8xHF
         JORfyuBBtMG5QrFqIdn9B+UFNIejGpPiar+zqcjHbLAl8SyEataznZyzmlbw11xYYj/M
         Sd5gnXnOwa1X7rQX+gnb5MDtXgJT41YNvNEqgzFzDq2b9ur9bMySo+94UqWLXd8/+3Hb
         amf4EeJx9b6nU0gS71kumFiszjCZ5nWVnCJOh06avWvmmHtLBMRoGSF/AIb8lpMzDFbZ
         KIziAis8IeDP/apmQyf9LsbE4WKeTpkTOMbiyQAV45UQ8Q6CgUQkX5OPpVUjde1V3eck
         fiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diktvfJZHdJg+vtEhQppXvYjHfgNTgMynZv5gec+FZY=;
        b=Ll/8WOfpAruMYLEa+lfx9Ctp2wYH0j8A+h5zH0gukpj8hYJWZmHz1XzvaaTmunLNDk
         99ZMuf1bPaYQoVvp5lIAxANP/h502FdYDYeAPiZpPI8p/jebgemnU1rtMTGNaT/iTkt/
         hW+dkHfrIeFj043TrSyvNAwt5KAfIa73nY8SkR2Agw70FAN9jCrOC6MoBDYrnVnVymzS
         dMEyW3xLzyRTqFsiZ5LHIByrL5ofK1B1Er7KVXU+7IlMhyBKPlFY6cPPIz3V9SU3lkwx
         6Sl/Lo8lpyOF3iu7ZY8M2mzoStgTwyofpnZx3uQiQwEQMg/7WhEjTD5dVJzWkSCShNnA
         IgBQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533Xe3fPy0xVQsIIp+Fg/l4Tdf4gFqUXqPRUKp4czJpnaG7PUBpR
	3xawk9gh4jL/Tp6qegDFSBY=
X-Google-Smtp-Source: ABdhPJx5RiTUa/vwXTloQBCHfkhdmi0IltLDPOuTAtNjyz5Hfdz0pT2xT+yQdGWBabsK3pNwrPeyag==
X-Received: by 2002:a9d:38c:: with SMTP id f12mr9185717otf.10.1617912411786;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:12f2:: with SMTP id g105ls1652561otg.6.gmail; Thu, 08
 Apr 2021 13:06:51 -0700 (PDT)
X-Received: by 2002:a9d:8d5:: with SMTP id 79mr9484862otf.345.1617912411389;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
Received: by 2002:a05:6808:f07:b029:f0:e583:46d9 with SMTP id m7-20020a0568080f07b02900f0e58346d9msoiw;
        Wed, 7 Apr 2021 05:15:04 -0700 (PDT)
X-Received: by 2002:a63:9811:: with SMTP id q17mr3098757pgd.238.1617797703698;
        Wed, 07 Apr 2021 05:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617797703; cv=none;
        d=google.com; s=arc-20160816;
        b=c5aqwwK/XfB5r66hUTLaM5sQfDaHtu22j+N10AS6bFQsQGErOETrxOGhaMr1BlHili
         YbvEHuevfMit8XL4QtSbIBXqXY6Q9SmUGjUo/no3C30x2Dzvzgv6HR+E8/SYnXyAecXw
         BUKV3R3C1NQmVakssCUd1Ap4AUUWYHetE1eT50hpkVBuPyGtzU7fyVJVDAF6oGexscEJ
         pcaclmuHrWDGt1H/VbGrx0hRX6oBJ8B5dk5N8mB5IQ/cr0KHiRzYtFvYzwFU/bzhZ7tU
         7JPStSptu/Te17Uxsj6YdPCe5DGdlSCgPGLSF9Aru29CSDra21nEZasy2y1t2bwsJ1k4
         LSag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=p8z6jhsec1sTelwmMJXxyrndzbT2nYewFXYq5lgbAWA=;
        b=jYvhmOKsw0Vrnqz7ElLaqNlRQpOJhYWjOBpXplYNtnIsEbC5W5gkp5yW2t19MKDzeT
         X5IsSjt2pJnwc1E6v5DyeUNSwnbrmzBegCxc1hM3QaThAPH+FRY30+/7Bm4KYJ2eLzRw
         00GYeoxzpDzKRo1y5tWLaFLqruHFbomVOJb5G1aRAq2VWvKNrp9uWfTlEHEt0sy/NMmb
         D96PG/BKs46XUuthYQxaoBxIoPPl/PpW0D34kLPhk/EO3rDo977pXIPKTPad/0l8jcuB
         vV3De54lnCOcEvPLJT3y3DQj+2WJKxBiSFNiuJwNK8nqVRbTOCckfcNLpOxT1zBkJW4o
         nICA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id z22si2539851pfc.6.2021.04.07.05.15.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 05:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FFjv14sH4zPnlP;
	Wed,  7 Apr 2021 20:12:13 +0800 (CST)
Received: from [10.174.176.73] (10.174.176.73) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Wed, 7 Apr 2021 20:14:52 +0800
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
To: Matthew Wilcox <willy@infradead.org>, Greg KH
	<gregkh@linuxfoundation.org>, <joe@perches.com>
CC: <stable@vger.kernel.org>, <vbabka@suse.cz>, <linux-mm@kvack.org>,
	<open-iscsi@googlegroups.com>, <cleech@redhat.com>, "zhangyi (F)"
	<yi.zhang@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>,
	<liuyongqiang13@huawei.com>, "Zhengyejian (Zetta)" <zhengyejian1@huawei.com>,
	Yang Yingliang <yangyingliang@huawei.com>, <chenzhou10@huawei.com>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
 <YGbLiIL8ewIX1Hrt@kroah.com> <20210402144120.GO351017@casper.infradead.org>
From: yangerkun <yangerkun@huawei.com>
Message-ID: <08b739b5-4401-e550-2028-1ce43db38141@huawei.com>
Date: Wed, 7 Apr 2021 20:14:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20210402144120.GO351017@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.176.73]
X-CFilter-Loop: Reflected
X-Original-Sender: yangerkun@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yangerkun@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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



=E5=9C=A8 2021/4/2 22:41, Matthew Wilcox =E5=86=99=E9=81=93:
> On Fri, Apr 02, 2021 at 09:45:12AM +0200, Greg KH wrote:
>> Why is the buffer alignment considered a "waste" here?  If that change
>> is in Linus's tree and newer kernels (it showed up in 5.4 which was
>> released quite a while ago), where are the people complaining about it
>> there?
>>
>> I think backporting 59bb47985c1d ("mm, sl[aou]b: guarantee natural
>> alignment for kmalloc(power-of-two)") seems like the correct thing to do
>> here to bring things into alignment (pun intended) with newer kernels.
>=20
> It's only a waste for slabs which need things like redzones (eg we could
> get 7 512-byte allocations out of a 4kB page with a 64 byte redzone
> and no alignment ; with alignment we can only get four).  Since slub
> can enable/disable redzones on a per-slab basis, and redzones aren't
> terribly interesting now that we have kasan/kfence, nobody really cares.
>=20
> .
>=20

Thanks for your explain! The imfluence seems minimal since the "waste"=20
will happen only when we enable slub_debug.

One more question for Joe Perches. Patch v2[1] does not add the
alignment check for buf and we add it in v3[2]. I don't see the
necessity for this check... Can you help to explain that why we need this?

Thanks,
Kun.


[1].=20
https://lore.kernel.org/lkml/a9054fb521e65f2809671fa9c18e2453061e9d91.15987=
44610.git.joe@perches.com/
[2].=20
https://lore.kernel.org/lkml/743a648dc817cddd2e7046283c868f1c08742f29.camel=
@perches.com/

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/08b739b5-4401-e550-2028-1ce43db38141%40huawei.com.
