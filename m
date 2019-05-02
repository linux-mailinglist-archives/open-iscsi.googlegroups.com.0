Return-Path: <open-iscsi+bncBCHZVHVFVMARBQ4QVLTAKGQE5PAXSUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B606E112F7
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:03:48 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id f6sf153214ljg.12
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:03:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777028; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/DN4Lw7Zb+QW/xN3kpjEycV39XSTNpJiwRAkvLn+gfVrofkBPwnIi8UCZogN55z4z
         SRVzJT4rhwbnmUb7b5PvIc8+5Izm+mt3iJwYvoA2D2efPdZ9DL5sK3A8b9AoZzrcOrPs
         /XPQtrCBfTGKY1fiHEYF6efIdKODha7wQZC/BIFwlg+EBwCXmD0+mYvr+kZED9k/9Q29
         5YYFVKRjqNrG0GVEAsZN2dGVsLo4rOxx9LQyUBpNxz7Jei2+8j7naau3T73cvTXs02mF
         XRmcmMSU7k+dm+73DyWbOFvZFICPXA2a2JN9pKBEqJ5KtsLyF4yzbrVAiKxYr1BQWkEm
         OZXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=28EwQ/egR8Ldeq4ZFOPESLOmiZYFx5dh5+lly6HOMWk=;
        b=bO/MQpDXMmyM0ZTErtwyx4WsjHTxHhzbeHpvb5Q7s73eywbTGbZU5QntcONzS/jaex
         xoOGMKUlOiPtWAv7w6nCkAFH21mkTMZBWc5oRg4+KbnnZVjLaGrJC9NPyras6rm7H7KK
         qxFJFeiKm068iUJKOXU2ds78pAQY8yoarXxObvZDIE5ojZ0YsnBGUIUOr1WM4WzoacBS
         ZD3Z1++iTif6hHApQFGz3AVjlQlE+Hg+FECCbS+pUy9pXw+oM/twm+ej9KBsCIwVc7uF
         qlDLQFGeCaoLRk7v2hDSKt7FCpIZmM+EJrCKJvoAOcbmApAxVDIWz4rUNUaYCIwK4sXe
         Aeiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28EwQ/egR8Ldeq4ZFOPESLOmiZYFx5dh5+lly6HOMWk=;
        b=ImYEyQLv3dNJkpLPu8IwFGkUGLHGf7yBomvtCzXGz08fug/afHWrgQO4Nk97ktro4R
         xAN6YGdQbpGMjJD/GsSkITtL6N1/1jgxeoX6RUf1CAh6pjKpb93cpesCnEL1cDhB5hyv
         XPZCfwEjXxeGIu06OULUedJrHk9nF8XOmZQD1wmPYf8w6cufvemS0AKRK1BWGm1oLWJB
         NuDnrSidQtorQ/OFGFRXotCQT1loK4CfUPJVSKb9mAI/5x9BrdMTZN6AB6/VCFtnzth3
         VziBU4dNXDo9X91l7IbDvj7bLDAv8X5rQlctEKVNmUSKruIC72xA6VGy/aZhQXJnhcfm
         +jZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28EwQ/egR8Ldeq4ZFOPESLOmiZYFx5dh5+lly6HOMWk=;
        b=IGcWfoI6UAit021tHDefX5mf8/WOnS8mJ3IixgFl3tXrbgRlzQ6QteNSogH2maUu1P
         vJUF0Cj740g3lhgJHdhSeirvOPwsHGvU/82ZTp2mKNe62GHUsBX5CxVaC+7cDYod+xPm
         vT5+hNRBERAHuu3PfRuq2wvplj4aD4dnWKT0+6v+asAgnSaQeoKyYNeEG2bioGfFYr8g
         yAb6DsJGEbrdLCCctMN95pqwIlp6c8CCgjM5EuDZAo+7c3jizxk+LI/TFfKFm2i1sm69
         a/A2OYZsx6/D3xtdIQ7BKTR256DL+hXxOUq2P02OtuURYLNWicvahGAxDvI4K/9ecXnk
         EAMw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXnaGwOdO6050uumKs4RHeNTXrg3hsewqJs1boutBCgbWhZ/BOY
	Gj9lPV/7ydKyoq9lckHamRA=
X-Google-Smtp-Source: APXvYqwgHeeeXJJX6RhpMk7Oququ+Y/vMOOoXyrCZqm9j4fXA1AFP5JUBzE8DhXIRMi67ddq3czPiw==
X-Received: by 2002:a19:7402:: with SMTP id v2mr903068lfe.53.1556777028369;
        Wed, 01 May 2019 23:03:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9799:: with SMTP id y25ls90771lji.16.gmail; Wed, 01 May
 2019 23:03:47 -0700 (PDT)
X-Received: by 2002:a2e:9196:: with SMTP id f22mr784376ljg.82.1556777027438;
        Wed, 01 May 2019 23:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777027; cv=none;
        d=google.com; s=arc-20160816;
        b=OdH606hx2nuOMj7TeuBoEwmT4HxPJXZafhkJ81KJi3Eml6ZpV0EUekkcoQ6fWsJ31X
         Evf/WFeaPA3TJmnD4ywdHuW66LaZKx2OOtzKjGV+6NkZ1Td2v+o4BYTbXVYHFhu0t4Nd
         di2kRkGoaa7V+i7x6zPiNbCM2lFC0kcFLHG3K+B4jSOQtjSoKle4Qko8TliiGflnQ6Dz
         3bSfccz0x9P+qaGr0OR3o8chR48j7s7/VGWQMAZKkFSYyaDBIyrYlUfMtQYqsZ1LpEN0
         L8OeUTrXQLLTTJN3IwFRjK9M8wEa0WzFnUe4dY7A9VJ3WcFghfOr4/hBWcPaIMceVAK9
         2oIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ZZnRgKAnyHdpWSuBV5xgFSinnJtM0Ga0KECpN29pmzs=;
        b=chexWtsaoPiadapo8IWIrKG7bKurrZ76Hxj0Ab8Yf/nkA0e0X7LDg/lCaxGeD8zg77
         xMKQhxSY4pdOV7D0OQAk3o1v9EiBEhEGG5Rw9jIeJvwcDYwdRc73JjO1u0xqv2pR6O4B
         0kwK54wATZBDgQeRxNCN0jNhtZNyjdBtxqXVrkyuyThLkj5bcD7FMDym9ZVObtIGQR5N
         ILbU7HO+U3frGrUd1JGOJ8sCS7BVet9uEUcuHUe+EnWpC9LYgiw8CP0jxGL7qH3b0z3P
         odUcEadYPKow++2KEFwWGcsrEigkA+nWAyYgvGRJvsaKSGZWH/8ZeiS/xYdAYRIZ1n9/
         VjHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j7si557841ljc.0.2019.05.01.23.03.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:03:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 8024DAEDB;
	Thu,  2 May 2019 06:03:46 +0000 (UTC)
Subject: Re: [PATCH 14/24] libiscsi: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-15-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <a47855d7-edc9-bb2b-21df-4fc0ca5f2735@suse.de>
Date: Thu, 2 May 2019 08:03:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-15-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

On 5/1/19 6:14 PM, Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/libiscsi.c       | 15 +--------------
>   drivers/scsi/libiscsi_tcp.c   | 13 +------------
>   include/scsi/iscsi_if.h       | 13 +------------
>   include/scsi/iscsi_proto.h    | 13 +------------
>   include/scsi/libiscsi.h       | 15 +--------------
>   include/scsi/libiscsi_tcp.h   | 13 +------------
>   include/scsi/scsi_bsg_iscsi.h | 16 +---------------
>   7 files changed, 7 insertions(+), 91 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.com>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
