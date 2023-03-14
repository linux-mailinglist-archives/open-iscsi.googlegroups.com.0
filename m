Return-Path: <open-iscsi+bncBCHZVHVFVMARBPN5YKQAMGQED7SBA6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B806B9B35
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:20:15 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id z12-20020a05651c11cc00b002935008af2asf4846624ljo.19
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:20:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678810815; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUv2HGPUSykWFs130w12G1t8zcevrofm6pLB4l+QkvogUg2ct9KaLk+4Zk398iR+Ie
         u6o05UZuEFIodfohb6cmj02WL8gZ9rpeTzceQ1yW46yxgRwxCxmOm9tScNqfkaONjtBS
         UoxgG7mG2MqnAjmqe4bJbbgfR6+M+1pjoZ/KTrjAG/9GAW03G1S9ePBumY1em/PLywU9
         hW4cGy6YzryBh+CdGScx77S4UhZAJrndWNCsi3SbWX8GKv6yeTvU59A8LAWPQ3EVLUI7
         k5wvZIXGk8Q+qTJxOxDrgh260XA31KjYsW83yzfFOAY34PP2CFkSqK4iNPKyXFiYLYxW
         oZLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=l3rjaBBRdjrNnacC52vx9zE9gcejfPmtd4kcA6nDp6g=;
        b=C9rROPFutM1fCpKZFrAotG1NNUqTV+UpZMweXB5ClEnWx04f19C8oIPrKDLo990OxT
         8VaX2O52/oqiO7T6qOkCHyps/VTuo3dFAOpQDlWMKPb656bhTwlJGd+c2cMHg3pB/yLF
         FN/2a9p1UnVjhJHtpqtB7LIb2BnveGquhon27DNW71r5228YS586us6LniapTDMSgWVE
         YrxAxoV5qj8lLy3F8gBIsqQ8p2DMPjTAsoo7vzdiRFVbVVVN7yPHqs9AgomUtEVrOkrt
         zRbafBptLoEptNuscQIPQ0C8QvAWmpwaFu4hl2Eva+/8q4f23EEHPi7CaHPvchD3ATaU
         rrrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=apwyjtcp;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=tsgGseOX;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678810815;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3rjaBBRdjrNnacC52vx9zE9gcejfPmtd4kcA6nDp6g=;
        b=tgg1GrghA2nMRXR5/bHz8Bb+ku7g0qFPFzBHKimndKBxxhdVizzLhbf9WOU1wxF9tG
         T0oa600nGw+8mcUqCKL1UwBfKlEuarCciFQYr3VQwc18nWP+fiXHJSf5f/tgUoFinKzc
         iM5z4GluabTd1kMW2M8XZQG+tW4ZoWI0aapV1pfIWXpPDvc7nBHfkEtF5hoXZnit3WWe
         pzM+qdB6IKUwVrVjpxP+AsiqJ5QLpZQxAxShiXO8zpFai8X+5cDvXIizm/vGnftfoUCZ
         RU6IHy3fJu3Q0ios19AcA5p3xfs7u+5dgWPxklrroApNU3txyCjmSuuruLfwCBd6HbfC
         uI0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678810815;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3rjaBBRdjrNnacC52vx9zE9gcejfPmtd4kcA6nDp6g=;
        b=dZkR6OuCsID4ESqjeF+ChE8iEcDcYmSIeLIIpQ7l2T7r1KR+Wr3Yep6cFkcsGSOVHh
         ZBb623MOy0DxQvzJZfI7X4q26nlqN02lCAF/EsrzQP/wCALN72E5wloAc1s/roUUHqnK
         8D2O1wXUn/JcolgNcMZ2cvUeXzYhe68nHZcytOJYDAfukjTu0nmZvberWRDtyQJaQtS9
         hSlML784q7J93Fgybc5m5+nM27VpcMfy1bElcaRjr6feF+NnBshzEQuyHMn8bJd7bDWz
         2VS2Qp5nvRb4sD27uNUaSe7nZlaG2H+yz22U2MEsUOuBZCR+SYPuCLUnMoVPvspPrq6x
         1NVw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKV15Mvl8Spylafs5EHMNNHzQDQVYORDwCdp7JiGvrTRQcu1ts/e
	feyr2fMbz1wgV9DARLPn9QU=
X-Google-Smtp-Source: AK7set8gM1sAAOy+D1vtzHUlDV64v9aODrd06KpUsIIdacv5F4I5Xg8xVjMgcxb75ob3xb0WzRRUaA==
X-Received: by 2002:a2e:b5a9:0:b0:295:ab47:1196 with SMTP id f9-20020a2eb5a9000000b00295ab471196mr11784524ljn.9.1678810815103;
        Tue, 14 Mar 2023 09:20:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:bc0e:0:b0:295:a3ad:f338 with SMTP id b14-20020a2ebc0e000000b00295a3adf338ls2762750ljf.4.-pod-prod-gmail;
 Tue, 14 Mar 2023 09:20:12 -0700 (PDT)
X-Received: by 2002:a2e:8807:0:b0:295:9a9f:3f55 with SMTP id x7-20020a2e8807000000b002959a9f3f55mr11536269ljh.0.1678810811983;
        Tue, 14 Mar 2023 09:20:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678810811; cv=none;
        d=google.com; s=arc-20160816;
        b=RiItwjZm7krOWtAPDs0Z9GqXGHmrPy1W1lyohs6Wyzz8mZ+0YEFv0J0krXN4lHVDtw
         j/9vPApmlV7M4nwQFzTtdlu5/jWq6zXGMu7cMqAf4GY7/SHEubZ/0Mxbqw5rSH4i/8tC
         BCKD/nMqlfzDIrzXJMBfVVGRKyNNjxhFsvloAla+MZw7y0twZsE9021z5jt5dItygLLw
         dHhalRKvdicbO8iQujWGQMAynZ19AvUU2BoDk2XRguNgZYt1ojfbGeXTPw4+06utmkbF
         A/sy/t6H/bPf/qRmaByHK7o3t4B6pC2nCleTC0aYStXU4zxrT0RDLEP4twJzGvuRVYrq
         7Vyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=YMm8wGU9lKPlT+0A0cGn5WagEyZwDalHzp2AUlTmDSc=;
        b=aPPUkqPx/tfi9fMPm19YLx3y/DxyrALlTDxzccguHMt3E+66FPvbZKW4vuQGulW0dD
         uHni6EsH4Uf7B5Gc5C64Thl8HGNouLKO5tHsUv5fAP/oGdvWMqblWcE/3116CrdTAjKc
         JmvYi1HeE9wpXC8zSNaJZ/Rw/mPXoKfEXs7gpO8GRU4Rl6rSREknQbjv58lpea2NIxfU
         ZppXduPEMOOOrofkvddajZYhMrf7QqXi4WhEq/7MZQnwY3YGsH2KsLn5aMeI6Bz9SElz
         WG4xYVyk9CPGz32BcRt0NlLWneD2wg4xt2Aebn8eTl/tTQAXwqf0HWvublUE8B5Qpto1
         AyIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=apwyjtcp;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=tsgGseOX;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id l20-20020a2ea814000000b002983b01eb8dsi144337ljq.7.2023.03.14.09.20.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:20:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 3F4771F8B4;
	Tue, 14 Mar 2023 16:20:11 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 25FBE13A26;
	Tue, 14 Mar 2023 16:20:11 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id I35UCLueEGS9YAAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:20:11 +0000
Message-ID: <bc73fcf1-d679-ec43-8235-b6342f78c1ba@suse.de>
Date: Tue, 14 Mar 2023 17:20:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=apwyjtcp;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=tsgGseOX;
       spf=pass (google.com: domain of hare@suse.de designates
 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 2/8/23 18:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> This is a request for comment on a set of patches that
> modify the kernel iSCSI initiator communications so that
> they are namespace-aware. The goal is to allow multiple
> iSCSI daemon (iscsid) to run at once as long as they
> are in separate namespaces, and so that iscsid can
> run in containers.
> 
> Comments and suggestions are more than welcome. I do not
> expect that this code is production-ready yet, and
> networking isn't my strongest suit (yet).
> 
> These patches were originally posted in 2015 by Chris
> Leech. There were some issues at the time about how
> to handle namespaces going away. I hope to address
> any issues raised with this patchset and then
> to merge these changes upstream to address working
> in working in containers.
> 
> My contribution thus far has been to update these patches
> to work with the current upstream kernel.
> 
> Chris Leech/Lee Duncan (9):
>    iscsi: create per-net iscsi netlink kernel sockets
>    iscsi: associate endpoints with a host
>    iscsi: sysfs filtering by network namespace
>    iscsi: make all iSCSI netlink multicast namespace aware
>    iscsi: set netns for iscsi_tcp hosts
>    iscsi: check net namespace for all iscsi lookup
>    iscsi: convert flashnode devices from bus to class
>    iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
>    iscsi: filter flashnode sysfs by net namespace
> 
>   drivers/infiniband/ulp/iser/iscsi_iser.c |   7 +-
>   drivers/scsi/be2iscsi/be_iscsi.c         |   6 +-
>   drivers/scsi/bnx2i/bnx2i_iscsi.c         |   6 +-
>   drivers/scsi/cxgbi/libcxgbi.c            |   6 +-
>   drivers/scsi/iscsi_tcp.c                 |   7 +
>   drivers/scsi/qedi/qedi_iscsi.c           |   6 +-
>   drivers/scsi/qla4xxx/ql4_os.c            |  64 +--
>   drivers/scsi/scsi_transport_iscsi.c      | 625 ++++++++++++++++-------
>   include/scsi/scsi_transport_iscsi.h      |  63 ++-
>   9 files changed, 537 insertions(+), 253 deletions(-)
> 
Awesome work!

Thanks for this!

Comments to follow on the individual patches.

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bc73fcf1-d679-ec43-8235-b6342f78c1ba%40suse.de.
