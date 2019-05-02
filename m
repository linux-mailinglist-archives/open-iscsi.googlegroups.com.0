Return-Path: <open-iscsi+bncBCHZVHVFVMARBLUOVLTAKGQE7E7Y2MY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6C9112D0
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 07:59:11 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id v18sf154047lja.21
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 22:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776750; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xt27c+FjCGhNitTFYTQhye3t4QC97qnfMJDf/zMVRXPst23kmQ6mUlh+h00KOhKhmr
         TUwvtzUkM2jIyD4rf0Ph9wv+fvVg9UL8y+vrtMVcuLKjFlC2960/jG1PpjrLgxTxFham
         7b3IaGW6NXk+GFmPcM3blX0GrQ+ld91m4b/lLZ24qLLZ+zmM6f45AvxXV3rVVVVcAQch
         Fkl8uPjDZPjoLJGRGwxTdMyIphH/Ty2Bs92i9QnZrE9zsbOKDX5/cJLg7+XSl+mkq6MC
         D0eOSvvqtzHpeMI2ddCNqeB6L9HQbOeKdG6M69Aqv4QEk/mnzWNibzLD5JIA8VAi80vD
         EHRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=9QtQg3gteS11e2kXHiXhv3bBlPddD0C8w0qmlbp3d00=;
        b=C5vm60PTSjBomAYi7E0WVo3b+/NCZ9vgiYpug/AzcULqu5yXWV3+yhIHNKygeOKB6I
         RfcofmuzZlne+RG7w3aFE/hySRDYwD1XYSmyRmOhXY4MFjD3XLaut9fvuot6eh9QSuL8
         Q7+8OKsGVaf5x17BfNUKwa1SOhHIM/qSQe7hG94t7iQb9lKRSIy0oAUgczEHDNX5tLn/
         Btygh75sh5sYPJeMtCai27h0yGev99PpVMVQ4IGfo5WrQyjhGcoQNsskTpTMm3lfiNog
         UNz66SbfxTE5soNk8zSg6csEgP1/PnQ/Dfbw1lo13HWqARdQW0vvDbNzEyoOv6rvnLwq
         U4rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QtQg3gteS11e2kXHiXhv3bBlPddD0C8w0qmlbp3d00=;
        b=hkX0jvqxdl5Ipdz/6QT3Xv+oOToL6ICy2cPiOzydNAHvZu5+/7WynP1bCBVsxz+1A1
         4l9sph35/TZCfUR9O+JViAzCAJYl7X6TfFw11xbYW91IjD17BufmnatRdiR3LtSZEUW/
         EIBrErdUgnBgicwEhyNWTSjDtn8vjkdQ+FRFAOustjCFrfaR1iI01dVFYO0T/1weCUa5
         qTjdLRvbcZrL5yj2DNcWtkF1fveBWZLOMo7kUHacdBnRobV212aGtQr6C1nKPQrHv4av
         IBilRpzY5lv3+cqdDwYYlTMfbzKjoZucA/77T1a6DqJXXb1tiAOO5uBJkD0TMVG72DyD
         qQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QtQg3gteS11e2kXHiXhv3bBlPddD0C8w0qmlbp3d00=;
        b=YzxPSKhuulQjqdhUlghlkLSKzJDk6aHvyd3ZpFFqvJhxHM80pUgdW09DBMY/dZ0Nt3
         2KPElZsIomlChjzau8JK/Qh1a6W3a1VE9zL+w8aVE4X2pxPOIrBb8zZ4yPaSGxX7CpvD
         Fx/gfkaJ7WV6LWuA3J94nGc+B8MplXFL79NGpU6fEFR91fX6psUWAQucPsfSdMeARLPQ
         1w7wtCQNWfvjRpbPb45jnNBDl2bMQiJ8qZqND5+y4Gr2dHck4L0a9+OAW13Yqho2dZsK
         umeYfraV+5dJAPsOoIua8M4xi0MEeLTVR443Dw9gPUvQ1ehw5b1VCYt642hwRi24zuwi
         kWSg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXmFwYYNxYW6d/wlERUZg9EkqiJnA9zQEIa5EoF9Nc8Gb8S/OAR
	iTJmta4DvB3VvmPhr7w6KT0=
X-Google-Smtp-Source: APXvYqzFlmkCK9MkWA0J2cw55Hl6Z7KELRUOkkz+3+IIFNO8hd5+KY/9qV4idnCdq1JU7CljFPvqlw==
X-Received: by 2002:a19:f601:: with SMTP id x1mr884442lfe.142.1556776750230;
        Wed, 01 May 2019 22:59:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c54:: with SMTP id t20ls90272ljj.9.gmail; Wed, 01 May
 2019 22:59:09 -0700 (PDT)
X-Received: by 2002:a2e:655a:: with SMTP id z87mr764494ljb.150.1556776749674;
        Wed, 01 May 2019 22:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776749; cv=none;
        d=google.com; s=arc-20160816;
        b=EbbYm8OFtV5JYWNKxZDdLhT4BRWEGD/cxwNyYJzEoJWFpHqAskq9U1HGdl/RrHo747
         bSEP8D9E+IvclbjnLUUkUUu9YhwdbF1uCdwFqacHTw/MFF8iqPlEugXfUA6TvUwrTaSu
         xtf2SkVcZyw6hz+6LeEbvX8NfBvCARNKDp6mx7cGayaV8JmsHBtK4K8BjDD4dUwOmHKt
         Afd+7zinEeLi/sT5uqw/PgNLDvX1ziLfPaQOhk8C5tlhNdk9AWmwWNrIgBvsz4IvfyMX
         z+NsFiGAwSGBq+wvbVNDC15k7DzU41Lhn/9rvRlJgjVVpfrxLk1dsfGLA4/pZa2nFItZ
         btpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nKU1J98k6bwwLc+UGziQo0QSy0Qz2w20rXgzsD7kaco=;
        b=sFkmlDAE9aezifScSYHcvoQ0ZNzW2gLj1xLJq9jZ/vLoHh+k4FIkgtR3LzYmF3JkUD
         TYZvk1M5N6RER1K5MJI/5RA6pqmkmdhxd8qKE2E7GqS4yP6SE61U9OsB92Y2oX//dygl
         vn/Gq4JU3zhVQv74MbOC8CexmXG94L5d0Dh1yU5+zX4RLrsminjChTbHSjH5C5f9BcJL
         9wWnMQwLKlXFegix6m7egicQdL8Jo2G9PXsYxsSkPCioRon6b+eu5xwECfxDVhePXKRc
         UJ4b1h77vYxLs/3G9HJhKeNfHy65z+xLiZGDAIwwyVpJWsXdTNUgyPKi7K8VsJuUoUxc
         ICAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z4si679983lfe.2.2019.05.01.22.59.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 22:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 79EB8ABE1;
	Thu,  2 May 2019 05:59:08 +0000 (UTC)
Subject: Re: [PATCH 02/24] scsi: switch the remaining scsi midlayer files to
 use SPDX tags
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
 <20190501161417.32592-3-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <7c02b3f0-f53e-ec56-bbab-1eebaa904a71@suse.de>
Date: Thu, 2 May 2019 07:59:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-3-hch@lst.de>
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

On 5/1/19 6:13 PM, Christoph Hellwig wrote:
> Use the GPLv2 SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/scsi_logging.c |  3 +--
>   drivers/scsi/scsi_sysctl.c  |  2 +-
>   drivers/scsi/scsi_trace.c   | 14 +-------------
>   3 files changed, 3 insertions(+), 16 deletions(-)
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
