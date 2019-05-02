Return-Path: <open-iscsi+bncBCHZVHVFVMARBX7YVPTAKGQEXQ2UEWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAE911B34
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 16:19:11 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id z12sf2097812wmf.4
        for <lists+open-iscsi@lfdr.de>; Thu, 02 May 2019 07:19:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556806751; cv=pass;
        d=google.com; s=arc-20160816;
        b=kFT1qf+2PJGO8YspIseXg7aUzUdFgN6bTSUjFBjtwcXcQoXCtRLMPzad/edKOJxz7/
         TA5Tr125GralnRcLrbtmN8tPtA88qTVZBVudFoXn6EDAXOMa0hzOM6XDKgbOvM/7L8WJ
         S4nXyV2vYfPwbCmvoe8u7CIn2zJ+5dqhkHAF0XZRODG8swNcJ9Wk5frwDu65EJ0kpoyg
         gquZ/6+pO5gJyRmHTIca6xgDg/l4shsrKwer0eKehLaGbChHpt5s4bAMYYilW2P1oScc
         kkdc48o1VWoBK9K6NiTWwQx8kWfafk5PjxvwoTgVtuMHCXnmdf2aGyia3t5E9FzNHu8q
         0dhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=tvXTXJc40qSUrdaDAEgv8a25iTNtbt3iM3/ejxvFhR4=;
        b=CC+XqxwHklE/Mx6OB31GJdH9tPh3G9bIjwGWB8n0hFHxRaPUkvTh0TJIKefidUCTQn
         u7kW9LwFryhXacBsrNfcdoKZpZXlxgksMORGo3obZ46UoUEYhGt+9gP+Tg+pfabv3M/5
         H4pdcdP5zxnaOOPZYAuLLUiEFb5rUGZFZbht8/Nyzf4aj8HkgrzfBJQjefey/sFOTwwg
         lH3KzKskbvgOjoMG2HFmYaTvqoOtM97DAesJDezRHIRv/YXRBihlyo7ql5RGhZGrrVVL
         b0RCODFSSRbQMn4sjRPqaN/V5eCxgBGZXgdsnMl8KtJgZ2f4T+WqMSqVkaFb8uf3FYzt
         v8dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvXTXJc40qSUrdaDAEgv8a25iTNtbt3iM3/ejxvFhR4=;
        b=Mjy1ReZ4uQQnrMWj03i85tamgGs4nnpFBhvyPsW2CmGe7udLTMlRzu9t9K3C8tAnDs
         07ktwsAbY/EKKarb1/iS673yppRl+ik3Yly2GV8C3baElrynaYY5FnKOAuqG+VMe51tI
         NnObklO8F29RERXFv8WoYsykZf+uobXWiEahsJISPRYUg6lMzlEantCT1v9w2HGdCiwd
         yKkGvZEaQ9kkCuEoJwpBWQDD1Ip18fy5PO7xzuHeruaLe9PvK7uZZV7qq8pBvpaftVbS
         iX7+esoFx0b1jMZq46Ob0LhR4lv0UhyThQhX8fQi66CNNop3XEtDAUUEeM72PYP7vq7b
         gI0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvXTXJc40qSUrdaDAEgv8a25iTNtbt3iM3/ejxvFhR4=;
        b=Dz8oWtvk7QisGtp16KTlTaXplE84PPgknEvAHsj8Alg4pqMLPen9Svx6lwYQot2sUB
         2UD4twoX8a2Ho55p7F+pllJoOiNRMh8TJLltSX95789F2ld6nY9/Y8pAiH/T0hcH+7Ym
         /ZFX75N4UEKPX57RuzzRD98bWj5/U47OIfXkx2q4plX22JgsaoYq8qDmnrR12mXAHaym
         CL/IB91gh4GbPthfqNS6trH795Wv8ucwGnGJ/D03wc6bPdaZqChUJabKfus72IriqZpd
         Rvtx3udFhjDRC11ue1UN1N+OEYELLl8ie5p6RKMUmQqWU/aSTUrmOxXBoW6r4pAhoJTn
         oiRA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWcn3FAeneFQ5sBR9iA7f0nncSntuGsCNxS9l6F51KQ7VESx+CZ
	D+PQTXhP94q2lfzgbWwmGXQ=
X-Google-Smtp-Source: APXvYqw/zYLVhAUi8sLnfZlg1KLz4n0gQXFUj1vi5GZGpwnurQpzZ+q5z1x1Pb6DOcub5vfP3OppQQ==
X-Received: by 2002:a5d:55cc:: with SMTP id i12mr2987187wrw.179.1556806751612;
        Thu, 02 May 2019 07:19:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:17:: with SMTP id 23ls750602wma.4.canary-gmail; Thu, 02
 May 2019 07:19:11 -0700 (PDT)
X-Received: by 2002:a1c:1b08:: with SMTP id b8mr2670749wmb.35.1556806751000;
        Thu, 02 May 2019 07:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556806750; cv=none;
        d=google.com; s=arc-20160816;
        b=HWD5FUXG4Jyorp8/qt75tx3eN5VsUcWvMTZ+51jX0JLxLvY2l0+mh9Xw5rMHdhOXLB
         C+74nikDIC5Qnep50IgVyVoAxC2MAvGm9a4RIrNDLmWenk2dXtOetM2CLfX0B7Zb6ts4
         E8moabew2dXuZ3mvFcPlFzPqLbp2ey1p7AoKq0YabxFXDPEWJiUOcM51TdMvjcuU5AD8
         5NHwnxoTiHnBhB32N+NZPQhDCOOANebvd1nTp4AprsFQLnSaqn2SOIY0j04q2oxrRicQ
         jJOQhyDjxYlfG8f7mlSzKlM4JAJOBjsZFCd9t5yZPbA61HkjP0ZwcJUbBfZjt1/W69jb
         xjOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=42jwUGQhNjN2Q7QYdh7SiLox/PHaXFy/d+sqTkdIrTs=;
        b=ZO7HFPJBHEtL3D8E2q6i2GizWiA9Haq7tovAVHUafdTcdhXt5LKuaDq24iw26AMltq
         EvyXg+csTicPsZEtkfSeB17YS6U/hIUZXp3PdEM3SU6pJRuMOSxAGAan2Fsrfcc81mvJ
         yFin8cHomlFrMI/kGcrS0gaHJKGmr6SR1K1jzmHcaWS8GbP5ZX49kb91M6znMTuNKXfZ
         5GGU7sFQW+UHxxezYDyHSIZsVOzLm+aKSrYHyQaDhErSS+pYQNsmuhC264g8U1GYyTYe
         b8KvLm9MUyw11wYaBeZhlxaWa/WysvMXotSLW6m9jUgBpMDDW8kh8RrZhJ3qjI708s5b
         Ql2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x18si209737wmh.2.2019.05.02.07.19.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 07:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id CF83CAD7E;
	Thu,  2 May 2019 14:19:09 +0000 (UTC)
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
To: Christoph Hellwig <hch@lst.de>
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Chriosstoph Hellwig <hch@losst.de>
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-25-hch@lst.de>
 <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de> <20190502125312.GA2560@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <10a8c8f5-879c-685f-f43c-d5af678b2187@suse.de>
Date: Thu, 2 May 2019 16:19:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502125312.GA2560@lst.de>
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

On 5/2/19 2:53 PM, Christoph Hellwig wrote:
> On Thu, May 02, 2019 at 08:06:38AM +0200, Hannes Reinecke wrote:
>> On 5/1/19 6:14 PM, Christoph Hellwig wrote:
>>> osst.c is the only osst file missing licensing information.  Add a
>>> GPLv2 tag for the default kernel license.
>>>
>>> Signed-off-by: Chriosstoph Hellwig <hch@losst.de>
>=20
> FYI, my s/st/osst/ on the commit message message up my signoff, this
> should be:
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
>=20
Maybe it's time to kill osst.c for good ...

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
