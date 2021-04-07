Return-Path: <open-iscsi+bncBAABB5GEXWBQMGQEPEBO25Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221B358E0E
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:07:18 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id k15sf932331oig.19
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912437; cv=pass;
        d=google.com; s=arc-20160816;
        b=cp7RIvccFcPqjJ7rZs12qbXQvyCnIcs9Okal+5hcTUwgutMiSaprcY087Qb6A7W1yc
         OpZoMbxdiAbqSg1ccyM4RSX6oeaELMLcyQG2wm+rtULOnxEWzwyKerqtgI1h/cS1gIxU
         acZhXuY72nurJSI31YuW9Nc8cP5nxmMWzHXlTNPQAtsAamk6we1FHMWU60vYDe9LROHl
         Zs2v5Zth4j325+gaF2Bx7ul3k3XpmVq95U+5GYYst9JEknqqJMK8q4KVTTWxQ9F50pA2
         bO7WPVDdzv1ks0VIpMbzbfhOWevfzmiCrozPS7FwZxTRX0GyEn+v3XP9vwAjZ5Pn0FdD
         1DAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=GG33NNwFRqUuCqGhDYa1Cab8cBe9MRyFWihwCIwfZWg=;
        b=PON54gJSFiLUO8KkPEJZloDV4+/T08T4LE7Qvo33JaFRVQ3VjPW6zTOvmSFpacfeUI
         OIs9yPdvtuOZ2rRibhh05SZh4cgsyLy7jFBrHbIytWDZ5n3hdvLUWUQ03ozVjHwnu9gt
         YRmc6tcwAWtYoPrk288Q3bMLchz7ZAEUBo2ByPvZLPbW6VboRHUFxNuqzJXBviVGQ4fX
         Vle/wsshNvW5hfdfLncUOvk7ik10prapDyBw3DsUTV0GI8cns2n3EJtAE1hxv8ss8BQX
         DUO7gSi0xsYvmuUIEXpljE1jwyiapQrxpX1TDmKKWh6UWESWon3bLccFQhH1IQknt5V/
         K9cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.59 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GG33NNwFRqUuCqGhDYa1Cab8cBe9MRyFWihwCIwfZWg=;
        b=FzBgwPaxgJcClPGBWY6za98TT0n5ial/A7D/I3EYubx929XEVK5D3NIPof+q3L6L+3
         Yf0P0dqm6oMBVikSZ2fw9VhtaCz9mdaUabt28RGvjyuisVMkwoEHPQujLmOnl7zmcvqq
         qXZRnGy0TDn03Ew1GRlu51x8HUpQTQ7TYPiGk5MlP4HCdBA4TVeyOPShYMWFRU859kJa
         4RPTh216t8PqI6XHBIL5sKDMzKmnJ3ajX0LElkEgMs+Sot8T7kiVUytCDyj+rfzG2C8S
         bLjxF801OJAiSoohYKH2fVls7je7kvaqdXhmmpuOAF0RJB1UGStQbLef7Bpg2a3bqqPm
         Vzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GG33NNwFRqUuCqGhDYa1Cab8cBe9MRyFWihwCIwfZWg=;
        b=LJe/z/ZZoDedxlLva4gJqftCnq6l2VAXty7X+IBNh/0a76Zl943aQlkCfNNPS/CtlU
         yrkXTwx8rRKzb1705KbEibzJpwdtfK9YGk/l3h4JyBdWKTDliZqYYHYhR2eSodnZg0IH
         yPXm0VnbUrmRUFhHwLiDqSIXS7esRCvwvaYYe1wMMOcSRGsyz1d25fuymt5j2c7VRLEz
         Q/BNd4Fo0gukfyTD7/8fKnzyg3jZShbJVnxYUa0VZUNPU21OeUXFGSEp6lsMmWNIe5lM
         cmod4TC8v0yRa8qwI7uQivYVDKYxs/oaa9eU1AAJwuYMwpfAileSm8cl++dW4Yi4UBmJ
         KBgg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530SKZlKH6gQTLRotd1JCYtvcfOfHnm47fkUvqdfZ3Ga90W/MMmF
	Q4j+8lY0Tjef7mekgVTqfRQ=
X-Google-Smtp-Source: ABdhPJyYVHv/uTK79yj0RKHqYmMQG0an54Wq8OM2r6UmBvb2wZiFFZTFyblg16r2PV67GMKK/2jr8g==
X-Received: by 2002:a9d:5541:: with SMTP id h1mr8968303oti.246.1617912437186;
        Thu, 08 Apr 2021 13:07:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4502:: with SMTP id w2ls410318ote.3.gmail; Thu, 08 Apr
 2021 13:07:16 -0700 (PDT)
X-Received: by 2002:a05:6830:1da5:: with SMTP id z5mr9628545oti.257.1617912436856;
        Thu, 08 Apr 2021 13:07:16 -0700 (PDT)
Received: by 2002:a05:6808:b23:b029:13d:54d2:e375 with SMTP id t3-20020a0568080b23b029013d54d2e375msoij;
        Wed, 7 Apr 2021 06:21:15 -0700 (PDT)
X-Received: by 2002:a92:c7b4:: with SMTP id f20mr2717830ilk.170.1617801675502;
        Wed, 07 Apr 2021 06:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617801675; cv=none;
        d=google.com; s=arc-20160816;
        b=u0y5sbGVEWmp4DcFYUwUgpm9A4H1k4Ta/Pu639scuerjg7paxC34AjWGKk9p8Cxl11
         OUOirdb5eJBB0gPoDJN98rRt+1qqv4ZIXKlLfB7DT0NYTussP8NACtXDmrKYaOBCSlWz
         0W5M5PTxPvd871++vjYdJDZPvH/zA/XMKL9Sw15GmcL04cWb0wKUdIpB1TVm4cTVvWdr
         +fSJOnrREOPoyOHmoepLpWm4a7c0zWjX+MNRF4NsHjXXamoTcLgnsQnetnwLLulurXws
         ykjo9cLAJr0Y015OCMUDcvXz0P68rwRsTIDIcC3al8+hA5F9ruwHa9H/w8QCwccJRdR0
         mdZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=QjA8Jy7tRaKTuDs4teJ9qI1/U8zZBN/+kSOIhyPOc84=;
        b=FAPn8abcdj1ULzS14hdU5gxPTf2b/Q/s21UOQVtUF/As6Lk3elqx/niDF0IqsmdZPp
         zmVn5+O3PFtJlQEdOry/dxg8pMR4eAIyD6uUjwF+Mn4fgcuRrzip6mq8iH9+s49AzKOk
         TZ6hQibtF8oaZyDVmiPZuVRKMS4W+DlzVyIpx/BiIOLufj3nGz72q19vnk44S4YFxS+B
         xaXueZNEovMDRlkEOkv/bo6B2lVhwWq+23UdW2aqXMQWC47dX3o246/pJDtdRt3h8Ihm
         7+6E4NqDH/8cW5jhKSbGzmZYR66u3+D0w/AxXhQViK9yoqExn5hteVopP36ckoWLHsFs
         zmeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.59 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0059.hostedemail.com. [216.40.44.59])
        by gmr-mx.google.com with ESMTPS id r15si387588ill.3.2021.04.07.06.21.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 06:21:15 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.59 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.59;
Received: from omf07.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 115EE182CCCAD;
	Wed,  7 Apr 2021 13:21:15 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf07.hostedemail.com (Postfix) with ESMTPA id 78264315D7A;
	Wed,  7 Apr 2021 13:21:12 +0000 (UTC)
Message-ID: <cf36c95f3f92bd76f2d6c81c5795acefbe358f09.camel@perches.com>
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
From: Joe Perches <joe@perches.com>
To: yangerkun <yangerkun@huawei.com>, Matthew Wilcox <willy@infradead.org>, 
	Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, vbabka@suse.cz, linux-mm@kvack.org, 
 open-iscsi@googlegroups.com, cleech@redhat.com, "zhangyi (F)"
 <yi.zhang@huawei.com>,  Kefeng Wang <wangkefeng.wang@huawei.com>,
 liuyongqiang13@huawei.com, "Zhengyejian (Zetta)" <zhengyejian1@huawei.com>,
 Yang Yingliang <yangyingliang@huawei.com>,  chenzhou10@huawei.com
Date: Wed, 07 Apr 2021 06:21:11 -0700
In-Reply-To: <08b739b5-4401-e550-2028-1ce43db38141@huawei.com>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
	 <YGbLiIL8ewIX1Hrt@kroah.com> <20210402144120.GO351017@casper.infradead.org>
	 <08b739b5-4401-e550-2028-1ce43db38141@huawei.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.10
X-Stat-Signature: iur8j878jaxoipa5hsxfxp4zx6d6p8km
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 78264315D7A
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19tPg5BY8oiEk400kiihuFsLCQX8VKOJ1I=
X-HE-Tag: 1617801672-488380
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.59 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2021-04-07 at 20:14 +0800, yangerkun wrote:
>=20
> =E5=9C=A8 2021/4/2 22:41, Matthew Wilcox =E5=86=99=E9=81=93:
> > On Fri, Apr 02, 2021 at 09:45:12AM +0200, Greg KH wrote:
> > > Why is the buffer alignment considered a "waste" here?  If that chang=
e
> > > is in Linus's tree and newer kernels (it showed up in 5.4 which was
> > > released quite a while ago), where are the people complaining about i=
t
> > > there?
> > >=20
> > > I think backporting 59bb47985c1d ("mm, sl[aou]b: guarantee natural
> > > alignment for kmalloc(power-of-two)") seems like the correct thing to=
 do
> > > here to bring things into alignment (pun intended) with newer kernels=
.
> >=20
> > It's only a waste for slabs which need things like redzones (eg we coul=
d
> > get 7 512-byte allocations out of a 4kB page with a 64 byte redzone
> > and no alignment ; with alignment we can only get four).  Since slub
> > can enable/disable redzones on a per-slab basis, and redzones aren't
> > terribly interesting now that we have kasan/kfence, nobody really cares=
.
> >=20
> > .
> >=20
>=20
> Thanks for your explain! The imfluence seems minimal since the "waste"=20
> will happen only when we enable slub_debug.
>=20
> One more question for Joe Perches. Patch v2[1] does not add the
> alignment check for buf and we add it in v3[2]. I don't see the
> necessity for this check... Can you help to explain that why we need this=
?

It's to make sure it's a PAGE_SIZE aligned buffer.
It's just so it would not be misused/abused in non-sysfs derived cases.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/cf36c95f3f92bd76f2d6c81c5795acefbe358f09.camel%40perches.com.
