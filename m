Return-Path: <open-iscsi+bncBCHZVHVFVMARB64QVLTAKGQEQNEK5BA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4059D11300
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:04:44 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id z128sf948860wmb.7
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777084; cv=pass;
        d=google.com; s=arc-20160816;
        b=c+rg9ax0KxC9W4F5pp8Id9w18yLhf2qH2xmr96nhCqKm+M44u4COyuRR8IT6fxosah
         miMhS2ik2kkyYihwKgTt/ZtRmHghm5TJF6bwxvCnB+x4n/Wb7eFI8hdLTsTphybBNKVX
         Lda+TArE2+nZnGQbPyoYbSy2Zgp67LJT/EvyBsmmkOCvRCv2qIEmNnJRbDsUfHfyF16u
         ZGUXNSY5CPmK50jj0IN2YCiQE3ar9K4GxbK17wmS1HDTkIWM2t0JxH9LjRLuoZdXxlmZ
         1xdVXlc4jzMe5GTJIvv6GkKMlD8+oy5fMobmP5WJGi0rUv5fZ6knZ3+/e01Jg76HJ2cc
         7A6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=vCxSTy37A0VZmZ5lvUDwuyGiwCfgpP1QE0l3BduOduM=;
        b=yQK9AoVXNsDN0KbMfXnsd70sMczWADLOzXS+N8DcfZqPw9MMErDQ4uEA1E5OF3EItK
         ad3BAXOKUfBcan71jNXmONnrCfBRXltpZvYRkls3x2QASzNPo/mg/ClXvbE+dkndFAKg
         2d7ubnVKwbcx0uPzqN/tpK0781js9idrlXFbNcaZ0VEBSbzNnIPucarzWMlDI3DyI52Y
         Dmnpabac4IX4Q4slLvh90Ddlrg94x+Zl2dqbtpnZfPoXDRBwXlzM7b+DKozHVUyI2EOD
         VDIjZ5R9S4tD+r+7hTxLZwpxKdr3tYGGGfSYBrzZjoIpo93rAQjvYIjyaRjGfqogMsxw
         dxBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vCxSTy37A0VZmZ5lvUDwuyGiwCfgpP1QE0l3BduOduM=;
        b=OEM4WP228ohJwOVVBY+LxQuA/wvcqPm+4Q2AebTwLGl+/io3xhdOLodgFjAkL7q5+8
         GifajBgZAapcmPDxHQqjKhCv4ECxVxJmTCqPtCHI+tlk4KhanC/KwGI14/XqYByMQCeG
         lgnCci7KfSSb5ZC4qm0pkZBX0ENSqz0gAH51j+zceMtEsvdDuc/CBSKBHyexdpqawJyx
         6eLaHEIPpPrqGh9bawMKvY8Ei/Z4kO+/iNs3wYCWxukcTCV7RorrJHeUQs4q3q5K/WdY
         iTOiIam6lOu4xjJ9I7+aXbPwBF5AzyPNhklNTKU5w9v6e9ybGGsPcJAo4MeBL6M9+cd7
         djbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vCxSTy37A0VZmZ5lvUDwuyGiwCfgpP1QE0l3BduOduM=;
        b=Z/iNVWjaDuQXZM/C57XxVz4tYIbjqEHynbfj8gi0KdZkKvKXaWO9AW8mIwZ8H6ZLSR
         FGBS/f0N/YNPob5bixv3pHU1LLlYEpCNq9LZG2MsIdu3XMg7h9MeOrCNVTPn2JC4RCNg
         Mjnu5QSurpiqtIwAlNIqDoSBoa3Fu1mW7pkyM4STlJwT3iA7iCBD+kNQ0nc6T2I52qOo
         s7ZAjTB9v71MKHDGzTBWVN9aGX4rPL+1XjXS1R3X1cSlj/Uc+N1mkm61/uV88UCpjbe1
         9+fkITUPukfRIYSi3LZyAkbmEByJ8j+vgYQlRCwveJACslq78aZxvBJk/U6W7NlfkAk4
         XExw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVxbI39/4dnI0YadUWeX3JpHAPuNF5Be3UKzJtkRhbJiaGhkOqL
	5966BBHPerjLc5ikTaneOOI=
X-Google-Smtp-Source: APXvYqwE3YE53mK0EA/Nn04qQpsF4lAkUAbhm0g7ZsmmcyRBcXFiHxLzCnHE3nETld/WqbYsa5Klog==
X-Received: by 2002:adf:eb03:: with SMTP id s3mr419182wrn.170.1556777084011;
        Wed, 01 May 2019 23:04:44 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:104a:: with SMTP id c10ls221554wrx.15.gmail; Wed,
 01 May 2019 23:04:43 -0700 (PDT)
X-Received: by 2002:a5d:45cc:: with SMTP id b12mr1340653wrs.142.1556777083743;
        Wed, 01 May 2019 23:04:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777083; cv=none;
        d=google.com; s=arc-20160816;
        b=EEvHMhpLha9Lgk5mlZjw9FSLzf6IFJpnFXfAMSIa3n0g/uzG6Vha9gPD8kuvnHMdfS
         GXcqzjVup9eRbSb1xfzTdFz/XuIg02IhFrTm8M6MXk8IglBRhwgGwUjo2lSjQ3eDYeDP
         1Fd3AftnJbOb+8WtmOi9d25MH7IhqPBFvnR7omZpN+Ec6N4s9UYuXI9yLWPdN2rYElWG
         /sO5ruxcbigMJuxPGQYQGxzBCJ3DRJNAG1zELNrdpCvDhMSdYvP3uvnpXpOfiB62MX4+
         vXd4PeblMfCoGSIrhUqQgKMGnbh/Qmu+fp3VVx9oXlW0CgE9oFcgXpzhadcUC8GIQGjK
         QirQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=WbYBYMpYze1KiwaBsZzCj+GA5MJyVePkPJduHDhCxLA=;
        b=Jq25feU47E/LTXr9ATyh8KsA4u8wHoraWlea39/6awONFQyZ6NbAd4Vmr2ajihV2fp
         EYa5B49OPsvGoWPycfH/NScNCb5PSfOmt2JEUestjco3ZYN0Gmg+PAN9Za2VLZiakClE
         8RJP32dmURrjuf4MYPBKd6RfdKb+siPvFmaPIhOx98euo4QiYWW6Too3DtaVMnApUFFo
         QUdS+9q+MRwjNoenfGfxoQwOd39WxZ9+TdushTKFYW8kuy76wq+3tua4GFUaXUYQovTf
         IxORukNXlauu2mcRHFtYNhybsIVOoqda9/DVR1YZGUbihLDGVQDmTJiI+bmR10Ifdpj0
         4Zzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x4si194993wmh.2.2019.05.01.23.04.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 2E6C0AF1A;
	Thu,  2 May 2019 06:04:43 +0000 (UTC)
Subject: Re: [PATCH 17/24] libsas: switch remaining files to SPDX tags
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
 <20190501161417.32592-18-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <fa603bbd-dcc8-f713-3fdd-fe659d6e72dc@suse.de>
Date: Thu, 2 May 2019 08:04:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-18-hch@lst.de>
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
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/libsas/sas_discover.c  | 18 +-----------------
>   drivers/scsi/libsas/sas_event.c     | 18 +-----------------
>   drivers/scsi/libsas/sas_expander.c  | 16 +---------------
>   drivers/scsi/libsas/sas_host_smp.c  |  5 +----
>   drivers/scsi/libsas/sas_init.c      | 19 +------------------
>   drivers/scsi/libsas/sas_internal.h  | 19 +------------------
>   drivers/scsi/libsas/sas_phy.c       | 18 +-----------------
>   drivers/scsi/libsas/sas_port.c      | 18 +-----------------
>   drivers/scsi/libsas/sas_scsi_host.c | 19 +------------------
>   include/scsi/libsas.h               | 19 +------------------
>   include/scsi/sas.h                  | 19 +------------------
>   include/scsi/sas_ata.h              | 17 +----------------
>   12 files changed, 12 insertions(+), 193 deletions(-)
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
