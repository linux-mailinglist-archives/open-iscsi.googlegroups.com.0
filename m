Return-Path: <open-iscsi+bncBCHZVHVFVMARB2EPVLTAKGQEUQUTW5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE7F112EB
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:02:17 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id w13sf203768lfl.10
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776937; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHB809aiB/dhwFbHPjjYbCZxkd8zjiHF/K8q7wfpzP2dyL36xpNnSexvhdK/IrKCC7
         3++SE3MqtTth/4JfjJPEpSn47sFGwXT1ir4lYZGDXdR4/+7K7Sngp7ElWcvdtRtB7Bkw
         f+DC7orrSDh3ctw/cMrx7bXDpkuIWNmL2Tkk9WODe5UvvSXm6XOMMUN0IWp4HfEO4yST
         WEwBVeMfrBIDhBqmlA4LJ4dUg0LMnzn8yB38Jiz4R81VrXPTEL121kse+9znCTBUAq3C
         OTwvH6mCQLJMjjAapA25+KVMiMQnFNNL2eadfvsfkuGYjAa2jOWS6cPe47w3Fqb28+nC
         jMjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=LlIN+51EpLfLnJxvt4x4sLbuFtnz6UjPo+oQeiJ2nK8=;
        b=qpUKfQaSRPp1ggc9URhc1C5UYRflB09Ukj/NmxOngXNqJ4np15K7L1lk4VTp7H8DlT
         M9f28H8Y/x31e1AyMHtigj4T2kipBOvnk9BbCsC1z/TA1qAlsNNwgcQwdTo3ZGFWnNS3
         7coghaz2NDqHd8PoGv/sc24UywF8XZMPiSC1uYYWmXllM4scTPHFpHJCUC8ZFj/OwnL7
         xNRzxFQUS/M4Ukclx09qlFo1k8VBOjMpLLVvuQDJRRVvr5aURWeGe4CpIp1+yVM35WB/
         3lHWJYAjDgkCPu+grGb6kZ1fmGVkf+TFGl6zzV204uNUshu63Fki6XKdHNWMsojss14V
         m26Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlIN+51EpLfLnJxvt4x4sLbuFtnz6UjPo+oQeiJ2nK8=;
        b=LWyj5W00e2GelmawQJZ6XQ9xr4SK222ldeQuVe1ftrSKvVBW4ZHk10RDBtytAeggZh
         c2anbzbDzJtO+7XIK7aOp0Q8cdg982OQptSSZBSf/FJR+DSNCteMT9wjC2tiBcnQ1F5s
         xoCPaXEn3EV9c1V6jEEXz1Pzmq1jqqsQrsOT03r5RmFyaLHYwwRXqv2gon2DtsJvN9Pj
         Z2by/NUBjuteUn7vLsUGLboiIk5Bro0RtzUCO5S+JdBPgz7HNiDiVjmN8vSyS0uuhSE0
         k3RuMooRdUnY2+maleJQ4/lNxjiAlAR3qBWf9Xn3iRev9rao6x4R2XeSNkAmp70zHCpi
         u9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlIN+51EpLfLnJxvt4x4sLbuFtnz6UjPo+oQeiJ2nK8=;
        b=DWUNCPJSgwoS3ZeR/mMjlU1S7dk7Lxg1X06z/N8UHvqhW8GgprLH8rDqmNOkxjBOaC
         TwI5yg2xBRaEbPfWAIWBWBTO6lybKnTLRCIL4Q35AMIJC0So2E4P4fuZGdSJsygjNnVP
         0I6m95LD70/U9CbV+kUyDsg8euDnsPL658SxOXlBzTBrxvV3HUqwo/uIeZnhdcXrvdH3
         Ccqsmv0qfLYkKWvYMoY3FqraCk5BcCffHxWsXndoC23eip2kr7EhKim65KGhkhlVh7G2
         Cw1T5j+My0WEmwuZsdWobbVWQuICYoEFkBpU0JBK/duWxzm1hqBkkNVpDGbhsxlklEQD
         cHcw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQIIW++9kfdn/Yh4p28tUiOuWksKJekgEgtvy3Cr6uisK7yL1n
	NLUntllMR76plU3f6ExoCY0=
X-Google-Smtp-Source: APXvYqwSwF2V2qjTOxM6XMkHtwJ593wrjuO9LJrciev5PylCYyFqlk0vtOA5seyyAu0dXaB0zJUNmg==
X-Received: by 2002:ac2:5487:: with SMTP id t7mr973169lfk.41.1556776937067;
        Wed, 01 May 2019 23:02:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:48a7:: with SMTP id u7ls91741lfg.5.gmail; Wed, 01 May
 2019 23:02:16 -0700 (PDT)
X-Received: by 2002:ac2:538a:: with SMTP id g10mr950132lfh.141.1556776936610;
        Wed, 01 May 2019 23:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776936; cv=none;
        d=google.com; s=arc-20160816;
        b=F8CfQJDmxdQ+vsIquu1h/hxVa31mrzZ7fLGv+QnRh/5ub7GfhSPONoTDwvs5cMp2Kc
         dNzZeXOOILQgj68paRxFdF36Km4hCnwZl/lgXa5iKx7cY1rCam0YjAfc+fylk7+MQztJ
         sCE/x3MR2+OKwMckrQrHemlFzruT4MHXG458tfScUfcZLCU4M5pcoHNkNw5vc/ffmszX
         e7qDAStynuWDa+fqj0/Icdw4bdOacO6Z2FnLIV56RdM9EFwTKa45VIYyRxROrdejJoc5
         Wme9EG2dyQ3NSCxQdJau0DVt3PSzWRKEwcZ6ZT6h56yDOO/n4W9xzP2e3q1ngXzMyt51
         xDFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=NJybgGNZMs9PXXWO1W5atuUNvJmWqK+0LYje6caZxkE=;
        b=IDVgQK9rARjwqx/1XYzKyMD/IHQN+oDyQNqJAV1541rxL0ZmngIsyz5sHF3INPgIyJ
         l4dgV/uuVsLPRfm7SJmpUc5xdkMOiNe5O5cXYKZtiM5qhCB1JWv3ViroCdjuIBJP2pqT
         HqSEvENZ3os3ws3mHMDSZvuYyyb9iSOUENESo1082Fmfit9K4/OcShHQ3yvzr+KtZ5vw
         ggQv1rAocYkuNLDBbUn9M59uKlTvRVeAx8o0lT+lRpYChSkAwjhlUJG0JwfdVV3azUHy
         sooo4CkHzN1BwxxedVtmAIYk2ZA6ALLflYjbeM/Flq8C44llM0H/CTFEWfb2qcYKxzGL
         FhNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m25si1541498lfl.1.2019.05.01.23.02.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 08A3CAF81;
	Thu,  2 May 2019 06:02:16 +0000 (UTC)
Subject: Re: [PATCH 10/24] scsi_transport_srp: switch to SPDX tags
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
 <20190501161417.32592-11-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <0e03c324-af1f-fb39-6896-7c2fa516fc60@suse.de>
Date: Thu, 2 May 2019 08:02:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-11-hch@lst.de>
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
>   drivers/scsi/scsi_transport_srp.c | 16 +---------------
>   1 file changed, 1 insertion(+), 15 deletions(-)
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
