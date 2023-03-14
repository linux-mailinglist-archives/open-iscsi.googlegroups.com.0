Return-Path: <open-iscsi+bncBCHZVHVFVMARBPHFYKQAMGQEE25FWOQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CF76B9D43
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 18:45:34 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id ev6-20020a056402540600b004bc2358ac04sf23309154edb.21
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 10:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678815934; cv=pass;
        d=google.com; s=arc-20160816;
        b=zvHX1GhG4jfJEg4zUE0m4L4zIb3WBF51XjYBJbBi7JFSZUn3KEmrHDOBdfCId/D784
         DS+ISBtRAYL2c9Cq/UcqkwP+vIStHJvX8yf/FS+uCJ+5uPj6eyld8Dqk4ooxHGfsGJAQ
         M0ckT4ewiz5vQ9EQ9ZwDklbUr8oCZk2a/LhEIVsOHa+gKRAxzgOqEqIALnlzvctBfX+X
         GGI4j1SlPXeQj0UsM/ZBPlCVMgVR3ZEtUsxXxhPNkT2Y/0bCzc9KIuOTUPr8UkEOkhct
         z5trR2a+ogtY+KbI/ApWL6LYK3btLA+dHMyYdhy217TeP6IWFgqAhh9snj/E6wtG90ay
         UlwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=bvfFpPMv4Imw3RT4X7rzEpb4y6EcRNiTXKPkUTxlnkA=;
        b=F1RtzrQdZDVeKxXXgssc6VcQLTQKMS8th6/7WJk4VG6gdi76KYJl+Tz+TVilehieEG
         /8E0IXmGfhmRkRUspmtYIMLx9u9qXUzvEE+wjgUbwB3PUN1XiFnmXflg4DC0iQp1SN7G
         B8O3bZ9e2+Pi6UcCnUjBtXPrtGj00k4yLuuGJBM8h+jHQYX0PEWK+mjztlyaODJXQ5a7
         5Y+GMmODUkeOWXJig/+S2d68Nq+/arvVpqFoF2qGpOqaLlFnSS5CizrkOciKzat/yr8k
         9aoVWn69F+yadnKONU7lT2rU/rEJ1TqlEk+BRdmhs3xG6oIy4sLgoJbeq25Uo9FRHBTT
         XzLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Sqjig8So;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678815934;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvfFpPMv4Imw3RT4X7rzEpb4y6EcRNiTXKPkUTxlnkA=;
        b=ZU+eTnn0C3UxOnj6o6rWX5ch88ZwoKMptscjud581sHzpfJ58bCPiZf0wjuPQDHlEo
         Ko39EoPbxJp5R0630Pt6JxXkLq24AdrSuDeMeTZTl2enj5elAxPN25vZwLIQOUzAou0n
         p7cEJHzU6PBSHiAHl67APf1Y2eAS5bIb1bJZT27guxqSuLiDs/U3uuBu97IZQgeYS58O
         u0wNSBM7Ox9HCTCPsbW0XytUvReCPcFGu42+A8O7W2umcju61V3FjtrperFSaH4LYV3A
         eTIjjKhprSou6vxrQQCAumXIlzK5zK0TUZWodc6JqA4kbwd/RnX7xTWu6mvFlzDqeSn1
         0vTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678815934;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvfFpPMv4Imw3RT4X7rzEpb4y6EcRNiTXKPkUTxlnkA=;
        b=jJBAPeRL2HZA304bk1Q50GZEDVIkd3rJZHxSAx5K75tEQfWoZsj74zRFXmY7gNSlIG
         EdKaYa1b2CUT500FqM/iNutpZu2rdO+Pi02CKlGu1ZZ2hWTSRZntL3ZJla9Vwe56u+lJ
         OOpOAFYjC+nraYO0RCVKcS9S7+Hd/D0iEgiG3ohZS8K2cqVUmWcBK2rODiVKrMq1+ygl
         qOY2ulm2eFwQ/pjDQeQepIKiiFI7XY/XVY2kau6vJXbce30/cYSrfxUga/hJwFrQiyx6
         reGh3LlM+/CfjnNu7yEf89P085ch0oMxLGEKnYXyY6NFxeuZb1SOJ/NeVmVQpsBPk+BZ
         m/Qw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWVcZ9FbdJ1po1SyekzTAO7f743a+HA0O/7adu+hDZVhm02LedI
	5hZo/fpC9OcIhmgXCrbvStY=
X-Google-Smtp-Source: AK7set8PmYHDCsK7K9bMzxdZRfIkyDps4LbIaaMtTAldyfYxLWE/u83WxMNmRrFpDDBmzLkpLVKpOA==
X-Received: by 2002:a17:906:fca9:b0:895:58be:964 with SMTP id qw9-20020a170906fca900b0089558be0964mr1770474ejb.2.1678815934477;
        Tue, 14 Mar 2023 10:45:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:e081:b0:8b1:3554:9966 with SMTP id
 gh1-20020a170906e08100b008b135549966ls10763892ejb.2.-pod-prod-gmail; Tue, 14
 Mar 2023 10:45:31 -0700 (PDT)
X-Received: by 2002:a17:906:3ada:b0:900:a150:cea3 with SMTP id z26-20020a1709063ada00b00900a150cea3mr3573258ejd.9.1678815931938;
        Tue, 14 Mar 2023 10:45:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678815931; cv=none;
        d=google.com; s=arc-20160816;
        b=xTwFctl9uuGlRfIaFmVp13W4D+O6hmWbb6Vi2DZk2m4/gdfS646rBN0Wh5zEBk27+N
         /sXceWFwlx20D69xOdjF6/nIkmkBhuKWu78+k5/mXonuU5dfm/gSuLrA0OczKot0CV86
         3rEiCS220fW+nJvH+GmfVS4nKW7NJcv3refA2CVJZe1bflyKbYNVdre6woj6OMORrhiA
         /tMl/xSQf1fn4EFzY6JRqCAQKOnbRT3FyB58fDZ1+5AtmkcAvqRULOu6MIUOop3HkFah
         mHfYYcv360PEzAYUSz2RMBRBj+TDoCs/cwweq97CbwajLzVMgfc68BVSMxyY+tIJaEEM
         zH2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=9hInEgkm+AFEBSizkAKBzMZHSNbriKfmk/Sip+Qqpx4=;
        b=oLlPjBoA86b7SUyJnE40WO2PQRbb25qFLNdfWen/RZ39qPG6A4nPjAkLbWMKEofLhU
         v173TVO8gVWAj5zOSN52+suE8mYC8GmWro+NIN/rp118jxUUjoymtukMZk/4QqIYqggc
         Ig0g21Ii2cpZvffJ1t4vg0Rv1LbRiEOlDY5xpoXEjf1ukpRwa02fklRy6iJLe+wzRCnz
         JkpLKC/lzeDFqE7G9QnBJiwnAfVFAmhcFgo8bD9X4ruDb7oNpmJXFmNZOi21AjBIndA/
         FtafDbe8hHtpbH/jDfEwN+0PeC9rSkKE4mrVcXDKsbSMo7EHSteOgITg14wA5MR0fH+S
         AaYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Sqjig8So;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id g10-20020a056402320a00b004acb5c6cf0csi173389eda.0.2023.03.14.10.45.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 10:45:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id A72181F37E;
	Tue, 14 Mar 2023 17:45:31 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 84B5013A1B;
	Tue, 14 Mar 2023 17:45:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 5tWsH7uyEGR7EAAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 17:45:31 +0000
Message-ID: <81e3d1f1-26c4-0fd3-7c99-00de4d8d9f12@suse.de>
Date: Tue, 14 Mar 2023 18:45:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 7/9] iscsi: convert flashnode devices from bus to
 class
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <e4f5405384b984cff51acfc6d36f49f0dd924a3e.1675876735.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <e4f5405384b984cff51acfc6d36f49f0dd924a3e.1675876735.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=Sqjig8So;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 195.135.220.29 as permitted sender)
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
> The flashnode session and connection devices should be filtered by net
> namespace along with the iscsi_host, but we can't do that with a bus
> device.  As these don't use any of the bus matching functionality, they
> make more sense as a class device anyway.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/qla4xxx/ql4_os.c       |  2 +-
>   drivers/scsi/scsi_transport_iscsi.c | 36 ++++++++++++-----------------
>   include/scsi/scsi_transport_iscsi.h |  2 ++
>   3 files changed, 18 insertions(+), 22 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/81e3d1f1-26c4-0fd3-7c99-00de4d8d9f12%40suse.de.
