Return-Path: <open-iscsi+bncBCHZVHVFVMARBEXFYKQAMGQENRFNDPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E996B9D3F
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 18:44:52 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id j32-20020a05600c1c2000b003e9bdf02c9fsf9722525wms.6
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 10:44:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678815892; cv=pass;
        d=google.com; s=arc-20160816;
        b=kIx3kextcl90Bz2Hv7IL6jXEPNJ1SB7qPI8DfgLcnBC9SNI72J4PHBE2SppRrINAya
         22/8UU3ZnRgK3DeAx8lp/9RcOhI3n6NZ3rjjGdSVLrie1U1j1lFR+uxz6LtwCjaD7N7x
         /E3nbzvORtaKiidCYY0PhCM+hH28mRMM8L2HaCGyBxF/pyZ899gnMutngRuPkP1YgB1l
         E4fqj7zuVTh3hJfJrJ2zy9SCZGR+ZqrUUopLO8PjGDgfzdDNdvYo+V14ImnpyIS3FuOT
         ArKHaZRcR/BM2ytQZFY7LrBKRHCmzLgz0bQuGqV6DCl8Hz+INcDK5ypXrYVa1HsGkqxm
         uQEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=kZ2AHvmgXlAwNArcsS6tklEmYmhfCHUKOFQ7tlT7lvo=;
        b=hQ222G4oHD6f8VQHG6g2hJ01AVowiyXa3+WG7sYH0Ima2h9dUjVt/pY/vIkazyCO4k
         eHtJwhW7A9Og/ickktEKFYivu9Y2j8C5aWzDprEU72yV7LJ9hYfh9rYMhtdLsizqmTDA
         6+EshPAFtGqI7qIQ3WlXDTqEpWzYOJGBwl8rJ8NW8rzsvM1RxCxaldyyRJAGziDIPKIk
         F2pcOz7FvrF+QoTtUWw6k7gVMtAZGi2pEuTnWJXjaleu6GCnC4r+Lbf3D0uijSCdtnXy
         lFmNFKtiIDWSL8xGTxmyu3Tvf0dLtNzG5edvMbAA5zJqODptNAKV2UZTyt4gCxts6lnf
         ZpVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TbevLQsn;
       dkim=neutral (no key) header.i=@suse.de header.b=jyVXnO5v;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678815892;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZ2AHvmgXlAwNArcsS6tklEmYmhfCHUKOFQ7tlT7lvo=;
        b=n2fR2roBxgqCXzk4gbnGzz/7P0Ol7zXoYO3eSerfQIGgRGXNeEWD/wCCobNMgJBkp4
         voU1qjomZoc1MrMPn6lSkn6YRJjNBr+f5GxLUAtit+6q/cz/B3HDIuo02g1IGFD3WLb+
         q1qCrypfH25DuafPDTNoX/JjHWHjcUsnuPTieXdzT/MEYrq2fUmMBYXrV1IomohUyLPS
         NAKkfRK73AoFcnKVLAnE60+HIk1UDLchfo0GHvGIuI6Oi2aTSoz4t1XvFodLOiiLQf9k
         qYcCB7irR7GbK6/ZV3IC7UXKBuaCZxpPwTfxxIZG1nsNXLe8fMF+upAOgnpxH9Y83/ww
         aNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678815892;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZ2AHvmgXlAwNArcsS6tklEmYmhfCHUKOFQ7tlT7lvo=;
        b=a9pdUeNADaSZmNzYZ4UOSHUgPr9tnCQYQAQ7pQR7gAg5stM8jOxU7peJHbcKL0AhTQ
         IjjJTH/H9t2lVAyqKTGM4ShTg9zG2AUnDpnR9BKFJoAB5NTJ1AdC87ai/qePzKb/jhHk
         nw4Hi7v87n4mf3ywMPakZTTqmkqGacTJp9elOujjVv8NpEZqdPbRuzEgY7oVPvwrz1yd
         aZu51etuSKBna33GX4CH9aTgPr78LAQgw2X7bFVa030FL0jx5lyf/YEoyZBLi8cBSLQT
         mwW1MupUidJkQ5/UxyUwgOeMRAnkMYJ2TlUwxlg8tSGsgTkflCaACnL4zqPwaiw+qJ2X
         Mpeg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWWA4iU9E0Az24lCBDJSevptCN8V20wxtdaMumr6943lVx1Y1u/
	fn5xqfZpbeTG/lG8fY+ewuM=
X-Google-Smtp-Source: AK7set+EbmNmmW2Tye2uH+wJIo5u7ep6QydBgGrqabz6VTLZ2d0dSYDlsawKsIrJsBBJc1y6Fm8REA==
X-Received: by 2002:adf:f0cc:0:b0:2ce:a0c2:d9f2 with SMTP id x12-20020adff0cc000000b002cea0c2d9f2mr1967632wro.1.1678815892393;
        Tue, 14 Mar 2023 10:44:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1c87:b0:3dc:5674:6707 with SMTP id
 k7-20020a05600c1c8700b003dc56746707ls10737612wms.2.-pod-canary-gmail; Tue, 14
 Mar 2023 10:44:49 -0700 (PDT)
X-Received: by 2002:a05:600c:1c28:b0:3eb:3b7e:7b89 with SMTP id j40-20020a05600c1c2800b003eb3b7e7b89mr15065708wms.3.1678815889937;
        Tue, 14 Mar 2023 10:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678815889; cv=none;
        d=google.com; s=arc-20160816;
        b=syFfabTr+UEoOB2yw7BlGVocFUgZs6W97KlEVn6UQZwrfPtJHNXE2C/cdRZYpLxeyB
         PRi1obBq4TCD2Vtf4XZLGtxQs6de/80EwZyVBt25HAs8a29w8yLWDDe56SKP0ec01zvo
         X5VsAxgtwZS/SzSfsUhWRXYOMyWShJKbFXpBnKvsgLpcDA/dgvIwoAMryOGJUSPd0/mm
         zwUi+mW+VHBawiTRSTp2vZKDUvoC0DVo9GCULkN69mVx1CcCs0urGQLRwXGs8axZDCPD
         4YsTDT2nVw/JAq0PkK7ToHdXER4/qvxPpqbPVDoX2FLN5t23uvSXaQ6RqcRkJ5dQJpm6
         3JsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=cX2nEzpfYSvApKcpdljYLZR0H4aXH20MH0UnDHbGbhg=;
        b=vtQEEt6xhwfV9Ke3ePLd+07ODegzeWzUeB9+1Sdkfx8sGENCJzdtTABjGkaWciJqB0
         tbeDfdevqneADXX9I/HRNYngmnIZs2QLYEtlSvG3srIPjB+XuMG1RajdoTcyLZUtUDU1
         AmjEF1//wdx/hRlm9NNBDv9w2yBL2VPeJPasvVyXaffTyfBe1i8S36eHZVPmN8UcYzaP
         q7+jiAf0b1N/D2CnVEmR32z1TJSWUq9zN4cC/tkaqoO/elZO9VY3TA/0haRfEvv4EoJs
         kEINIZ0DihytM4L69FGmS2QhT2VWKTfWL/8StuMO+CDIrjc2Bm79gTQ3sPXd0m5xp+AX
         nxqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TbevLQsn;
       dkim=neutral (no key) header.i=@suse.de header.b=jyVXnO5v;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id bh23-20020a05600c3d1700b003ed26bd5589si176706wmb.0.2023.03.14.10.44.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 10:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 950711F8AE;
	Tue, 14 Mar 2023 17:44:49 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7A5E913A1B;
	Tue, 14 Mar 2023 17:44:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id j1UzHZGyEGQNEAAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 17:44:49 +0000
Message-ID: <f6b53945-bbc2-f6b2-7d70-4f11849af5ce@suse.de>
Date: Tue, 14 Mar 2023 18:44:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 6/9] iscsi: check net namespace for all iscsi lookup
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <cd46fe01cb5710469ffc4a5282c601382360be7d.1675876735.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <cd46fe01cb5710469ffc4a5282c601382360be7d.1675876735.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=TbevLQsn;       dkim=neutral
 (no key) header.i=@suse.de header.b=jyVXnO5v;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.29 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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
> All internal lookups of iSCSI transport objects need to be filtered by
> net namespace.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/infiniband/ulp/iser/iscsi_iser.c |   5 +-
>   drivers/scsi/be2iscsi/be_iscsi.c         |   4 +-
>   drivers/scsi/bnx2i/bnx2i_iscsi.c         |   4 +-
>   drivers/scsi/cxgbi/libcxgbi.c            |   4 +-
>   drivers/scsi/qedi/qedi_iscsi.c           |   4 +-
>   drivers/scsi/qla4xxx/ql4_os.c            |   8 +-
>   drivers/scsi/scsi_transport_iscsi.c      | 202 ++++++++++++++---------
>   include/scsi/scsi_transport_iscsi.h      |   5 +-
>   8 files changed, 149 insertions(+), 87 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f6b53945-bbc2-f6b2-7d70-4f11849af5ce%40suse.de.
