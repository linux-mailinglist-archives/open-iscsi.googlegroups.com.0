Return-Path: <open-iscsi+bncBCHZVHVFVMARBDURVLTAKGQEBX6XLGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id A46BA11305
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:05:02 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id j63sf867672wmj.7
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:05:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777102; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUSYySbJTGomNRn5lGT9pjG0j4/cZ9kPyndVX++26DGnJZL9Xy925yJKZYzDj5qgO0
         VNIomvfaawIZHvRH4hjt96wk5YIh/trvqRU04wIZe/IXqPCv79zP63LrVl3+4sHDyHBt
         J6p+iGHwfX95KPSldH2IjPWeDc8680HR+EH/IVXbkn7iQHizTr3bqsKyjpgmjujia4ad
         IAJOVd2O14OJRKPVDumxtB3vmUSNYBgvudDFYpZUy6JU+bBXqVVIHuQ0d+FZ/inpImFD
         1s+l39guIWVUGupdxSAKcvWVeVQklrICCx8Bs+qZsFEB+bl4R0s8nQirtYq8XJhC1Z8T
         s2Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Y4+EvjQ2HTNl0jzyQ4qfwmq8xGDMJ0RUnCE3spsEFuU=;
        b=OCjycLSFh/RBk40xZKFU7nUpaSCMK2/MDvW3stcS6Z9UTsNWDsMr7+cQXr49tOqddM
         Hwcsc5rQTQ/HZjPLvpulurQpESlCrZXbd0kn6vU+8ZHTm6mI4UoHdFVGTIXN2p+jHTM3
         nnYBoLvShgjL/uajcx2Xi6dSNiMpy82lCkUJZrz31u+9mV2FUnyMw6PvqVJXJCkA6Tgn
         zdDHU2jln0KF4oFfST5lTyEs1ja3saI7OVN3F3laLy0kQmo+pVtjC3byCu5w0EBCQMrG
         WwyN9kuqyoaCYEb73sreA3n19EvTX9sbJJ4Z6quFLxkyt0rFgZEsehI3ZGTEP9R7Ysv8
         vQAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4+EvjQ2HTNl0jzyQ4qfwmq8xGDMJ0RUnCE3spsEFuU=;
        b=It1xxUbB/OkYmwCZHFyiD4uaTluBiRHyzgU5N2ig1XuFbaD5/iuxnShgZ0KBcSbVUR
         oYkjEC1sjtBtxLGym2jYqTdzuebqDGXP9YP6/8MX5dHov44I21x2QRSsgofYdosW2Zuq
         asvBSUn3+5Ym4gKIH9ZZGITsw6q48Pibhxp3cZS82BKg2RSUIuOHO+E1wbON9F3/2ii0
         PTCKZOAuYW80/DvpTs5R3mKrDgjyBU1QR2K/bByNAZgFLuHd354TLRKkalIHyJi8xX0Y
         dnyOmiSRoQvDtqaY/nV/ov3ho2bmQ5cUeo/yJUjQFXBaqDAzXxOSYOp4TwuyvU1u8sjv
         Cs2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4+EvjQ2HTNl0jzyQ4qfwmq8xGDMJ0RUnCE3spsEFuU=;
        b=AIRzMF0IHQPvucAjvNpZPd3VIePA8OXGU8OoAcsaYneZuofPgR5matkrnbAOY0o2Oh
         rBJtHvo4mCG2Elz0aVKlcZrst0/So739SN42TAf3zOjsG/Dwh2UVhsdUne8r/GojkRdC
         1kSvS80a0i8mJmbF1OjIj6XQoQcwiAvb1fm0AXK+hgYG/TiDsGO6YA3huhnH9+WzyPt0
         HZAYjIHwHPlqMRk4Cv5p5IHHMqMAQ5z6udnzsHt8rZc4Zq1RsvbQXK622OhLi4tyTfFW
         HQCyJIPGAn8Hp6MoNqwTCQDaHGe24ne44C1x9uZN3fs7uSnqfWE4hDkotiX9zbzZK8KI
         jPtA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX7rUfSFme0Ax23rNgJ0jNASOPp2anm7kQIV+hXZsjZtnj4neNF
	Zf1gWJyPLSG2A/GlZUz9ifM=
X-Google-Smtp-Source: APXvYqwRgDt63oKkwR2PRboCsl89S8OYDrob+gpaHw0Qdncai96CoGFrpiogmbPTpUibEQzFLXBGXQ==
X-Received: by 2002:a5d:5545:: with SMTP id g5mr1306824wrw.146.1556777102432;
        Wed, 01 May 2019 23:05:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:7dc5:: with SMTP id y188ls303907wmc.1.canary-gmail; Wed,
 01 May 2019 23:05:02 -0700 (PDT)
X-Received: by 2002:a05:600c:2302:: with SMTP id 2mr962814wmo.115.1556777102151;
        Wed, 01 May 2019 23:05:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777102; cv=none;
        d=google.com; s=arc-20160816;
        b=yfei9fX7NLslX6lV9umpCeGkE8YeQKb31g/W29xAD8LhsiufxneRg9mbi2JlGBqseV
         l/t4FWl3c/hNQnIbDdu9dHCKFAeByQyzDmXtgaT2aQAXnBGtKPqQJmuFgAYpRUggErxu
         p1EORBPF4VEQif3uhlIPPbvLGfqL4czv+tD3kpUpBvNg7I17mPE0Bs9ymm58XHOw+flh
         LSHPtoxeS4a+mVYqzcqbEX244r/4oD//53mKHks6ziiWelgbSGM2TxN2+WMiTCMtva6g
         xEvpMvnRAWAkDPvrxIkrMbFWW//JpSnwprXC3qx/aXLpB6DKvSnnTmtktcLEKGGtnhVF
         VI7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JqqAzoEin0tJM161eyKH50WrMrNitzLzBD2QUmPJkf8=;
        b=uR4sx8hTgzxAXk41qROq02EYlu8u/cYXsV1GG/6ss8hk3/ZM97Aoya98X0bu4U4VC6
         wAW/hKGBOZk521z3EFmHzc6gUgT9Fv9xJlH0lADYi9obXnAR8x5sCxE9Y/E6xzLIfYND
         elwEfdGq4fNZ2v1pp9yyDR31TQ2tWyVUx4ZkyfqfKYE3jbLyoTqvuxZr2M3VDfy3bEXX
         QLMwJW/6C1HgUvwfAf801kJzm3fcvyeD5I4mp2kuxzoimp4mJ+DBrJDEU/TzccdomARj
         fQbZVFnBxaDZ8d090NjN/yisJ/PwxnwJBTZjdZ0zX2jRK2gFNBklU2yY1DYNmC6ruqT1
         tRAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f1si342467wme.1.2019.05.01.23.05.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:05:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id BBF5DAEDB;
	Thu,  2 May 2019 06:05:01 +0000 (UTC)
Subject: Re: [PATCH 18/24] sd: add a SPDX tag to sd.c
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
 <20190501161417.32592-19-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <e5753ac3-43a8-b4b7-4ce4-ed05e413b5e1@suse.de>
Date: Thu, 2 May 2019 08:05:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-19-hch@lst.de>
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
> sd.c is the only sd file missing licensing information.  Add a
> GPLv2 tag for the default kernel license.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/sd.c | 1 +
>   1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
> index 2b2bc4b49d78..4852c2223359 100644
> --- a/drivers/scsi/sd.c
> +++ b/drivers/scsi/sd.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>    *      sd.c Copyright (C) 1992 Drew Eckhardt
>    *           Copyright (C) 1993, 1994, 1995, 1999 Eric Youngdale
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
