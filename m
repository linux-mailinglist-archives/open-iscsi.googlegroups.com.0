Return-Path: <open-iscsi+bncBCHZVHVFVMARBVMQVLTAKGQE2C25E3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F62112FA
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:04:05 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id w13sf204255lfl.10
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:04:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777045; cv=pass;
        d=google.com; s=arc-20160816;
        b=o3U83QJkOXgieFXHxT8LYwgaITllV5KMf1Rs0Y64a8gGJYRDY51Y2ycTtIlJu2NOYD
         nBaCjIrqXS+t2riQiV1PXhy9drDL896pBPKShnlFS1dgFkSybSk/sXB8io1YTuk3eZW2
         NZXvdTTy4T1jHdldUAThQMw8YSzW3++kivDxZ56da/xVnNnzqxvIvxb4KQLLsIOHdgjV
         TiuEwbSXS3OM0pksq3RK1x4ZIYytueaEfpWi3T5vhKIIMU+4YRaYH/bF4Q2r3ey4ITJP
         gAyKl5N4ty6XiOvaGLH4n6FyOkQA1rEYP6xgSoTze5cBtpL3LYYH3Oh1s+eomGCxjfEz
         nyKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=ldvPBbAjBDM7Yy23Evl8tCgxL/l6NR/wnd2t1x8GOTk=;
        b=veke+KjUoMDVm9mi954Z97OlDAVsZreUAGHl48qAqXr2LYeM3+rnieXRmXrlSxC6os
         zGssM/18FVPp6cWIqgVv+ztr4JSF0X6NXMiaGieMWqaY3Jp6DNgS9ksNGyacQs5/7ovN
         RUK9AjSlx4Gc55tfsKsdmpW+LvhhS2/kU9UhgFqsW28+muHWeliqKSX+yjkEF+8vSkAJ
         STGXS2UHSmg7HdTQMvS/dV3OWK4B4NNeSmoOSedRThhNyQO0Xs6D5tBBo2r049qq4ozC
         FBBVrkXiydf4bMVLvftX7IByNMnMWJB5o28wKfgWXZLfcawwSuNnSvd2pkKkSrhtyzqE
         UFUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldvPBbAjBDM7Yy23Evl8tCgxL/l6NR/wnd2t1x8GOTk=;
        b=JJ/H30XHzgCzfjtn1OiKxQKorHFGTl0acgwazuZAifzN7GFQlpNu3mDc/DZrFLAnwT
         jJSFTgafmWuyvLxL7xXxJm0qhfg++KOhiQIRAWbXgM/uE2PZU1bw0YU7VDT04rZEl9mj
         0aSnm824zJG/hytaDkqlfE6niJ+o7EXK2NnM84Su0+K+8XVs1cARHws0axz+8I5mgi5B
         fokJR+JERkQpXb0Ifd74XSvFP7oJMXs4X/JPQFB4/7TmKV43S59NqMLUbgT18u8plHuN
         CyV2weSfsJ/V73YM6JiYFs1lnO2XEPklKxyia0gTpNPEMYkmJMeNfQ/TGOUvYdRVq5LO
         o0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldvPBbAjBDM7Yy23Evl8tCgxL/l6NR/wnd2t1x8GOTk=;
        b=Wex8FZndYc4Gnkx7NYAjYIRN0k3s9YvbH2gGjGawWEo1mvuIuiFZOib8nfKYskI6/G
         FN9129/iaT8cUFNaY/brwzDQTrqIf2gtuNFv0Z5xV9B23DDOU0fcWkpqHiIIis5SZHqv
         DuKgdYtch1kDMxRhDFDibEZcc5TVcxteQTSl8uaYzHkLTzI91n5VbnksScUz0irIcHml
         jX64cSbA4lddA56F1sISmAwSwysxettPjQPAg13+iDUqVj78ZvNBLR0CFhEq7thK7Dnt
         d7o4OypyRWFfIbOceQ8gkc+YB/p7kQ2P7yZ/ZXJ0KLpe1yyL1RK80imnqw3o3WeiJKGo
         Opng==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXIjYz2kS/17C4z6O7O1OdN7twIp3YTihujYiqoZz1lManxcj/w
	HuGSG4cv0kO8iWrSNSO5+Ts=
X-Google-Smtp-Source: APXvYqz8Lk0McfKS06DcHh4m2g7kyZY7P6icuJXSgI7dyaSmWcT8tuBOfF7MUxcyRuPQZ9DtgTnpnQ==
X-Received: by 2002:a2e:8496:: with SMTP id b22mr767461ljh.9.1556777045292;
        Wed, 01 May 2019 23:04:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:2f07:: with SMTP id v7ls91098ljv.12.gmail; Wed, 01 May
 2019 23:04:04 -0700 (PDT)
X-Received: by 2002:a2e:880b:: with SMTP id x11mr394374ljh.4.1556777044864;
        Wed, 01 May 2019 23:04:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777044; cv=none;
        d=google.com; s=arc-20160816;
        b=m+OD3aYMJLY/cXAg/8zPS2ROZJG7WAfOdwuNUfBoK8IropATj8gzMCMNrq5p/MnPV8
         A5iZWanvUcb7LOcz5KlMNpyP4pgOheLPH4QoKs17nXXlokp6z0VLXRm6PjIoqUAe12Pd
         +Slxrqtk5ghxf4h3TQ2d1I444RWCrboQspkVzq/5Ff6nTKEDPTTxB+rsgz9Nf8nYt/iA
         58qBjj55WTKKe8BKigqHb/2uHAby0pqcZcCxfwZuX0CqcIUtkMYz7Z+7wsherNMKBTUJ
         8m4fRxIB+95xCcusphfEvcwYctdPkFlDPJjiuPcf4hwU9A4NAqY8ssaJevsZuu2DekAh
         upjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=H+FpmUulN1PC+TCHoBhONiuKqwXFirbkZ32ktRqB5W0=;
        b=NH2H2z00j4xFc7AQPVctZEB8v0JGaQNdHL2Db7uFjPENqTfn8vVXd17OMcbqJdvb8x
         XODaJg7Gs9s2dxXq8pnKWTJgQNjJPInlGLK/rPZrQHiE6et/VscDCuJT4LFBLEQGw66g
         laz0cM0OUi667sr9dadfbtfZRdb98TShq8NuTt/ce85c8JgHg05xqlF9ZYCdqe419/tH
         Xv9rzff4fDG1ngKzzCLy962sqzpuhZLJEt4AkzQP4kv/1JDZhTzflMCB6tqjX4sBe9JX
         R9W2MWLiJ9G+44Hi5vajHwkRLC90P/LbV1f3CkayYL9Vj06WLvySZT2AoiuTqSJjrDu9
         5gYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x14si74784ljh.1.2019.05.01.23.04.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:04:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 3ADBEAEF4;
	Thu,  2 May 2019 06:04:04 +0000 (UTC)
Subject: Re: [PATCH 15/24] libsas: add a SPDX tag to sas_task.c
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
 <20190501161417.32592-16-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <98bba5a6-33a4-8862-edcc-a93ae7cc3354@suse.de>
Date: Thu, 2 May 2019 08:04:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-16-hch@lst.de>
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
> sas_task.c is the only libsas file missing licensing information.  Add a
> GPLv2 tag for the default kernel license.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/libsas/sas_task.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/scsi/libsas/sas_task.c b/drivers/scsi/libsas/sas_tas=
k.c
> index c3b9befad4e6..a46e8e4c0684 100644
> --- a/drivers/scsi/libsas/sas_task.c
> +++ b/drivers/scsi/libsas/sas_task.c
> @@ -1,4 +1,4 @@
> -
> +// SPDX-License-Identifier: GPL-2.0
>   #include "sas_internal.h"
>  =20
>   #include <linux/kernel.h>
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
