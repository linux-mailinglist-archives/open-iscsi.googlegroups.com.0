Return-Path: <open-iscsi+bncBCHZVHVFVMARBFUQVLTAKGQEORKQ7FQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A837112F1
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:03:03 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id x1sf1347721wrd.15
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:03:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776983; cv=pass;
        d=google.com; s=arc-20160816;
        b=E11YbyaBQcVEdw4xcVsBz9s95X9O1Qn7YRtp13IYE09dEtBU0lxER6cDmOBgBkIa0G
         GKONYsQ+S9JEBZ/urkNtmT7rXDbZLZZ56PPco1Wsfw5fIWYSQNRHp8NI9cGE2kxF0d3j
         yytHJ2b54aOd0Z1ME8jmm1HiZudiGcrCDmR0wITt7xj/icLT0gUdcwwClUpO0Fkmupqp
         diLEhl1cpNL17KhMERFMl8dTKSVxTdeu3kJs5SBGKHwzr1f6upDppUaucPtnHOTXUSas
         A7i8A0HM5ncACUtcimRuHAOamMUKyATS8CJs52n99+w2qI09JX7q7wBvreACCkt1LaGD
         v8VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=08dXvx6EqHaWKEXiWOIVWdwudAsxTxaLNU3hEiUuIbo=;
        b=b2knc9PFRRs9SS5s5O0AkIxna/hV1bGIybEK0AJBdZZZOy81PelfuYU3TqXOuoOhtP
         pYhXv7JuE2o9vBqheQK3/McIeHuV9YfksyhQX8Gk5weqK093ETSYp9dHEajHu+43LUaS
         Bcg6mjH/sI8zjqjYnaiuIQ22CgGewF3/qYS/VXYIKIzjk5uVvmLud4f6ywJFSJp066G+
         /5Yxpd0qNSEzA4UlyXAhQuot/u8uaqrB7C9mkOl+G6OmG+eSvMft4qhKr/nxM3fiSSpb
         egyKT3CqO4NFbHhKa8BHfg8JlUjUez57XkXev1vT+S6p73vtDCkdPsN3C6e2m2SSyYqy
         Ebeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08dXvx6EqHaWKEXiWOIVWdwudAsxTxaLNU3hEiUuIbo=;
        b=tTqkXnguJVdsO7KaU57guRphx6bZ0yckps+/YW10qkosxhG4f9VGGBJQDWaYFJL5zf
         eV9mhbZ8EQbgeSj296B1kFZ8iYyJYq5IA57EAat+PbyMdHtZzT/fLNm6iWlLQY60b0Zq
         ANBfb3/vChH0OLl99xR8e3WmZ856tcFKYUI8ADgBKD6w/CcxurYPszwW576tEhmwUwoE
         fuASuH/Xv19eMXd0+BU4oFYHH1wnDx2pAa03OJD6winrNJDBgn6qpowvd83PpoE8EnPt
         IOi/uWctTlEi/1eENK2rnJNTSLZBlXTZEzTtRTouq+2Xx9u/9qjQiJpUjFF/NK/XdOPg
         rPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08dXvx6EqHaWKEXiWOIVWdwudAsxTxaLNU3hEiUuIbo=;
        b=JZT/wLqdi5sv6NnFW5OUUMT0Ex17iOOJCu7z+KtR19BhT/scyLTZ9jYw53AQwkwAV2
         /BcOC9e+XJM3yh9S3kWkDedMpb6uhLkNLDu4mWOETDfeGFIjG8XrjYs4avSsEV8HdfJT
         8KNDZVfgFNYrRBtV8ZIQrAsMRfBN6TyH7bn1bFik/16rBfVYRtIeTNecc21GoEK4OZl4
         iV3MnlkFbuQLjVQ6nwWZnoK3+la6Gy5oSOae9QKxknJPH0E0XXscUA7/hMQk8mWF78qY
         Wm+joYd1uwJCrbvGGHsnVJqDGkApTQNKSZe9MwI96T+EITWR4i/7aMUFDnwFCISMBARU
         B1Eg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUHtOeua2hcIHQQmrNG7O4wNEvWT/uzgOLZ3BmafrseGsa8UfOP
	qm25PoTB4E8Nui+SUl08dEw=
X-Google-Smtp-Source: APXvYqziDwukm2PrEFLnN3mFZxdfKlQh/o2FQZCFbrkqj3isrbSZNaeAdi9SZLdBzTfiW8VunCCckg==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr915999wml.24.1556776983041;
        Wed, 01 May 2019 23:03:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:104a:: with SMTP id c10ls220608wrx.15.gmail; Wed,
 01 May 2019 23:03:02 -0700 (PDT)
X-Received: by 2002:a5d:4805:: with SMTP id l5mr1278240wrq.279.1556776982613;
        Wed, 01 May 2019 23:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776982; cv=none;
        d=google.com; s=arc-20160816;
        b=Bh/cYP1aHU7notRStkvddnY9jm71+faFh9hQnsZeRu47TkwhRWxV5tKs45Nvc+Rtih
         3pUuNFj9B+VfLAO+A84ylylt4MYP06TB/q0aVgtZS7CmvyyyiBsBCzRUML/AUeK1/32+
         4Pu6CZ2AxuNH6dpmIuuA+b+E5cwXwuXzxr15kvwV5fbC1JFuKi32GGUUlQFwkm1Dngux
         Yc8XcRxIZ4ghejIDysV3SEU0HzQWxLrUta91m8w3gF2kidJ9oP7F92Vk3rSA5htwV8tM
         oAZwgjyQpTT+Ihsz8sa3P4nd4TroytH3rlGivw6XBpm5nKxwp04Eg1JBoS/k3MK0DubD
         mzfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=IutK1wRQ35Po/MIEwMjvILNwokmpC12XVZkIw+ZabXw=;
        b=qkKAU1RXhp++p0tZ38LqsJjmgazcRI4Y5Jl/Iz7PvhkDzq8YQvJGPQCht96Kabq8Bk
         8rehQIRvzi3QDh2uyWRMIuAKuHQc4z0i9iBFOUTRvQRoiP9Bm2G//dR/hI1UcHfNMsYF
         fXXQDPalxuRcvFCuiF7vlCVQdQqIG/dtKc1koQ5ZANtglLYgMP9MhsB0b0Fds9cUIXDP
         GPQ2HzSQr2/lhysCAihFdhVSNGaUV+dmK4CpW2N+NWcklLY1xfAX+5A4Akvxzr1lEpiq
         jUkqEptWyFijyQOlM5L6BJ69qzKY244n8r+V7hW7GWbMNpooXq0/eBtglIseOcKgLYju
         kusw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z70si362882wmc.2.2019.05.01.23.03.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 46E1EAEF4;
	Thu,  2 May 2019 06:03:02 +0000 (UTC)
Subject: Re: [PATCH 12/24] libfc: switch to SPDX tags
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
 <20190501161417.32592-13-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <3ae164d9-f1b0-c1b9-e867-f592b0fef4c2@suse.de>
Date: Thu, 2 May 2019 08:03:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-13-hch@lst.de>
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
>   drivers/scsi/libfc/fc_disc.c  | 14 +-------------
>   drivers/scsi/libfc/fc_elsct.c | 14 +-------------
>   drivers/scsi/libfc/fc_exch.c  | 14 +-------------
>   drivers/scsi/libfc/fc_fcp.c   | 14 +-------------
>   drivers/scsi/libfc/fc_frame.c | 14 +-------------
>   drivers/scsi/libfc/fc_libfc.c | 14 +-------------
>   drivers/scsi/libfc/fc_libfc.h | 14 +-------------
>   drivers/scsi/libfc/fc_lport.c | 14 +-------------
>   drivers/scsi/libfc/fc_npiv.c  | 14 +-------------
>   drivers/scsi/libfc/fc_rport.c | 14 +-------------
>   include/scsi/fc/fc_encaps.h   | 14 +-------------
>   include/scsi/fc/fc_fc2.h      | 14 +-------------
>   include/scsi/fc/fc_fcoe.h     | 14 +-------------
>   include/scsi/fc/fc_fcp.h      | 14 +-------------
>   include/scsi/fc/fc_fip.h      | 14 +-------------
>   include/scsi/fc/fc_ms.h       | 17 +++--------------
>   include/scsi/libfc.h          | 14 +-------------
>   17 files changed, 19 insertions(+), 222 deletions(-)
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
