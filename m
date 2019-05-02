Return-Path: <open-iscsi+bncBCHZVHVFVMARBVMPVLTAKGQETGG5KYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 847D2112E6
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:01:57 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id y189sf875588wmd.4
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:01:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776917; cv=pass;
        d=google.com; s=arc-20160816;
        b=qw81LrXQX2L/X9ITI0woyzmPXuMLyB8MQ3AeP1mDrhzozg7Oxsse26gdkhqwXhxC93
         jAnUKrsu0hJ1lPcx+HHteXXWc7FrVelD14ByGCSGDZ5fASA8Zrkh9Qutis/oBagz4WfU
         CSIFBUQ/YMA2WUjYMYO6Y+KutSiXK/d2Hrd9N0T2SGDvtYXUtKLSaeKcKPsjAD+1dMlt
         vzfE0zg7/PvghTRwnocbZNYdCecvLM05SOp40cDeRKVjjNc92OvS0d85DgKKDBBGbnN6
         wt2mDG1EO71Th6f17Xwi4jCfVpVhevwhzW8yhITZ1fzdKWwMe8OuWsaoX19ork2Ouq6x
         HQ+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=VgvzPMk9pNE+ba71Mzvo0h0qnaUuAC03Nv3L3xxmxFA=;
        b=iDn64LxyJBohMi1ETfRbv1GCgM4v6pxtL8vs1sp7+w0cT6aMqvX5wBUiSqEFKe/5Jl
         nDxIumHYV7eIkZoB/IaE2cSkoSgAWPknGoZMJqAP2p1knerwAuUXczF0Y/swq5VfE2kz
         CBe+zX7ZTfuBGDk24+uQMpII5yVRNH0s0cF97yQ13HWNVGjcbgv8DHFX24erwo7Uuceb
         MxGEzVyYXp7OAad1Pg2DYxtF9SyNbXRKMSOXdgR+YKOy42qKWFtZYoWJIZT7vKKFdlxI
         Cv1E9y37SDCiM7hQ58MP1nO/QsuXOTjJ9AttNToINI4cIpGt+bkMhFTEDCVCv/ChYM4Z
         RsuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgvzPMk9pNE+ba71Mzvo0h0qnaUuAC03Nv3L3xxmxFA=;
        b=ZuBoKzAw+RNs7JHsoWH0a2YgDVCkbOAgN8hFrDMRnFS4kAANM9dveNuwcGWAXpD4dA
         jvbblRipeRplW6LGu96rhbXGcGCK2WMgwDBC03zk5V+WPeNOegGtkI5FyF/7Sz+1S8nr
         gT1kwiWNkG4gMFKqq7SIc7B7sOE472Okt3XKJf/YGva3ODRWG8kt/ON92TpnAKQeyAE9
         lVZGXmEfsTu0X8dJcyg7bzWMXJP6eQipCKHF/4bgejdpN3cpMWR+wfD7ncqBefC4pBPq
         5Zwx+rMjpVsHVZCann1U6y8DodcoR6JazFd8ql0Wwoi20LWTG72UamURK0DOhszCJF2q
         x/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgvzPMk9pNE+ba71Mzvo0h0qnaUuAC03Nv3L3xxmxFA=;
        b=kB1nD55B1PhLMouWnVWMB2GMc7F2Icdyod7EKV8TfOFojqG4yoooxR9vangWnUgBvJ
         bwUQOmUtJs/y8guYeYpBvGAzxa31I4e6rD8oVTHn/g4hhOX/mMzf25HkxqeH/TM+VLi1
         /IB4xfgVZnO3To0+YG+jSSA7RJdU/i0XRaYaEdK/YfDLKki9H82I8bapR7iuDfjabpgB
         VRXfpMO72suiqkMw1llopTnNxr9rKPFCCBnmvzdT/2E3e5xzSKO5zFm0r2ShAT2SjGaN
         0k5hQPtFTNwU+caIojHqaXZaS9DWkKa1/lQ/3hXe2MLNLUnDm4N2+n8E/3v8nhyvymEA
         UlFw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUQnAbbtV2DX35jNv13o86WL1BtG3fGz01Q41oRoEXA6hdTwPhE
	jMtqyTX8bI3LPNUa5bt1x0I=
X-Google-Smtp-Source: APXvYqzytCYlMu0lZsTlF21S+m6uPFdpgFDfDM6S2pNTCiDhOFM4OzAUDtNVXABpp38k+u29zxtT5g==
X-Received: by 2002:adf:b696:: with SMTP id j22mr1265059wre.85.1556776917324;
        Wed, 01 May 2019 23:01:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:7dc5:: with SMTP id y188ls301755wmc.1.canary-gmail; Wed,
 01 May 2019 23:01:56 -0700 (PDT)
X-Received: by 2002:a1c:495:: with SMTP id 143mr946761wme.109.1556776916928;
        Wed, 01 May 2019 23:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776916; cv=none;
        d=google.com; s=arc-20160816;
        b=R1DgDJoS//mBUp63YxqZ/spqIfV8ayt4nMcXOPu7qfpMxQT6UEI+dLAs9oUbImrO58
         knSsuuFolDYa98nlCu+bR32xvx3DlJlyZ21yNHgoKiKTrbqWjhZ7xanjlrZRPx1YLHYy
         SeB6A3BAabK+jq4vmh8u+2Rc15+k8ixZ3Uq3NKhXsn6UctiU7dPYNEexEnsWNFOs03AV
         Ypr5Y9Sx8TBwcfHSTFsK16UwTHqHlVvdaV+pNU3NsyutXmfYi0lTwXiV/stcGwreJWCq
         R9iDyYhkSQX71zKjlda1WMtcjLMEayx1R9khR51t6fUAemuQX9KZwUS8t5WIFj9ICIxb
         a7kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=lsS+116Ir6BnwlWw0XH7NVuch+FCo+iuAckz4x4nsGA=;
        b=btuJojot0KT8WdoC19/aJkZGHwrGd4YztlBGfDCnQAvoSfpLg0XIMw2uq/IklikfW6
         GxHH7mFraf7coyHqzibENBmWhgTHr2h8VYlAmZplrM89ELBMd1D/cFLuziOinDETZpcf
         BFfI98MQsTJgCsU/tPcRGV//yihnNW5u+fi3DucsRjxa/Jrqdva1LuxmBCgfkXJ0iOOa
         +asc0kZePKgKizNHM1y28v4+dUx323BFiTeIsWuKcXMvBsB5inVKiu9KOfqN1EhRMnzP
         haFiAgQot9FQMxN6jt4sAvFn1v5TWW8Yqab6xjLFV/Otzrh+TzF5IFsuycqpKBvM7Y9r
         9KpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x4si194554wmh.2.2019.05.01.23.01.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 93E6AAEF4;
	Thu,  2 May 2019 06:01:56 +0000 (UTC)
Subject: Re: [PATCH 09/24] scsi_transport_spi: switch to SPDX tags
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
 <20190501161417.32592-10-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <b275d6cc-ae18-e57a-5a29-3eafd2938233@suse.de>
Date: Thu, 2 May 2019 08:01:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-10-hch@lst.de>
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
>   drivers/scsi/scsi_transport_spi.c | 15 +--------------
>   include/scsi/scsi_transport_spi.h | 15 +--------------
>   2 files changed, 2 insertions(+), 28 deletions(-)
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
