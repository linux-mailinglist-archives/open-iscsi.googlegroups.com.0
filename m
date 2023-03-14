Return-Path: <open-iscsi+bncBCHZVHVFVMARBG7GYKQAMGQEYGMMH5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB7E6B9D56
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 18:47:09 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id p8-20020a056512234800b004dda0f69233sf4888604lfu.13
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 10:47:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678816029; cv=pass;
        d=google.com; s=arc-20160816;
        b=WkElwwRCe+VXGwoG/CCflLXX7QPP5PhwCG8hXon2V6nOmnIdxnOw7GS6BG9Kv/HeVE
         6Gu/dAGqhjcLC+C8hG+MRdpfBRatKwuzVuhvdWPJHZlQwNIWnmIayLz+Dil3pnei+nxj
         4t6UhCeW5lBXcVupwVuXMmbdcEk0q00Ntuug9EOQZyCsvEZTrdDkfG4eIN7AxMf66fkD
         VyOcDHJMZd9PizPvX+QnqnOzxwTybW6GhCxPqtexJ+9MDYz0Iq48kjE+LMim2K7APjPI
         cYZ7hXX0kHO7lwCOtzLJ27NqxOyfPmxdwU5c5/FQy6BwsE7aSmHw1UyWF9RJd3ssN5MD
         gbnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=7G9bnkXO3JoCY+rtpdeMjCYZIujmsl8y1ySI5M3Uch4=;
        b=a18+HFkR0AENhxVzpUjgZO91PLDlaYyY6H+qJE04twkGYtD//hFumWri+2/ChyMrv2
         Gct3oOON9DyJBC2HUS8YemJDZXL3fMwzuuZHP60cjlgiu9rY1sykWriCBXVbhNa+vVTH
         XyFUOy+QlpmhzE5PMgfx3SWlF9D6mA0Vn5t9YftRsngWTeO1S62IafyceBU6w+5p6Tcv
         CNGFh1/3byZMkr3fTkt6xdXbguDqi4jEM7vs/UOeMLGpa3TJziGIiSGekdNFGnkTX5Rh
         xSswlaWi2vSaKrajpEbSGE/Zb+HtfQL79yUdmLPalgiXEYgDGOm98bMONsVDKk4xYa3W
         dk9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=krIguMSr;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678816029;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7G9bnkXO3JoCY+rtpdeMjCYZIujmsl8y1ySI5M3Uch4=;
        b=knBBmd4ovYfTURoTx/TVAGyFSZBG2s2zDCvfoRAvGGsYmwYh+ZQ/tXyz9o7i+Xj1yX
         QUJrtLmJaIhAWAKequFPmlCorhUjk5r8zmCACoPx3ak8MYMi4q1Txq+y4fd9LDMhKEh+
         m3FbH9qWgU2v29ZheDP5BCny2kMSpG4fyoQGhODNTa6tutifPwq8/fr48PkDUZpw18oq
         E0ttn3RECSCe7Wacmi722MrdGesgv5PuBBcxSolSvoCqAFtQueVTcamAXMFU4XKFIw/R
         LjWpQnJCQxqLI9Le7Cxdn1EWL3poSXVcGvTXxyzodkRAIlmgiWQPE2Cl0d+n5wYEZQSr
         AsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678816029;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7G9bnkXO3JoCY+rtpdeMjCYZIujmsl8y1ySI5M3Uch4=;
        b=qots0yi7uHdshUp5p8dHIWwJVWxNu70k4w/YvNzXpKoB9lcAg47oE6d9KnS9bXUGbm
         fOTVD7R3EFlydwCblS5w1szdANzRhfG6wV9JKu6VEjIh7BOjFitgshVovVb+4qXnKxUT
         Y0el/GDiav51CSsetQsECQ11EjHcylNsa90G8aCMG3RS1UalHOHcmwnPipmC936cufnJ
         iLhBn4eRjVOUnbYJhGpnLEwByYvYBIJExQG87HVRV0sFSzhpAcFKOCo+l/MKrH0rL/vl
         m7BWWsa/+nE1aQAWjT9EF9TjP8r+B6RXznl1jjPB81hDXb/q5eeg9x7Q/717XOpGcQ8R
         bDNA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKU7Zlb6Q7Wp2Vvor+fhWDfsaQkYnHTELb5ADsrSKE6JWUlwf7P8
	w1Ugtju4uOSE7C6wi2Iatn0=
X-Google-Smtp-Source: AK7set+naALhMYo6H6+8zv3aY4OHcQ0XMFXJGl7/sf69EvN937Eh7swWDDRpHMvoijkv1vZd1a754Q==
X-Received: by 2002:a2e:a4a7:0:b0:296:d4da:16ac with SMTP id g7-20020a2ea4a7000000b00296d4da16acmr12005774ljm.10.1678816029104;
        Tue, 14 Mar 2023 10:47:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:b18:b0:4e8:3ee1:db1a with SMTP id
 w24-20020a0565120b1800b004e83ee1db1als3252164lfu.0.-pod-prod-gmail; Tue, 14
 Mar 2023 10:47:06 -0700 (PDT)
X-Received: by 2002:ac2:555a:0:b0:4cc:b784:c47e with SMTP id l26-20020ac2555a000000b004ccb784c47emr947951lfk.62.1678816026229;
        Tue, 14 Mar 2023 10:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678816026; cv=none;
        d=google.com; s=arc-20160816;
        b=i6lDcfAiinb9RcMXDORFt5t/6ljSFOLvY+SmO+r0pWP8ne2qwaEElJGmhmHS4/CUTl
         Wmm4/r2vbCwhh8Hm04e0qNZlIgqgoD4MsYqVoWQt+ItwhiKtXGifmrWewORMzsYR+mJ9
         97fYDXb7fPKfEUJ7tvuO6hulw+NVIFFK/aByBFKN2oxdX9qpATvDT/7t3hLnJDucvuaZ
         kXKabVXvTuhTRVI7JYIAVamAsfzo6Cip1Q6+u12FkVhbWiayzuOIl2ABb14K02HqjpfH
         s1/HiR2AgPLemskVtuWfrSo37Jv4aMm53OUiMmSyjWt2HAA+mt+ZRjyXy4VRkEgbLQDa
         DFHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=kQCwPppQzHLY//VQWuDUSTxSBPKu74YPyDD8dbAyBQQ=;
        b=IaPgmQKDcvc+ZZub123Ka4W7dpibN5bf4rhNMydtzFY2c9VUQFfNf5TCQhgnSdEllJ
         HeYkJ7JW6zpy54nIU8388gQfom6fW3eQgmQoNGfTYmTyGT96U2ZGgFivttwvNk3FkKsy
         wH4+PgmK2yNxhelvg07K6M+/O1cV+JDqBW4tBzjPzpPXws6uUo/dXzMlLaf1vXGL2m+5
         wN59+058S+X06UDCKryyM8OKm9LaEGrqHq/UttXXwryosX9hBZiBbJb6lbeUuESN+MBZ
         XUdQ6byMB6/UJLbuzuEDKFT/KTgaA05spcCIE2nktdgQYQBIaQdlYBLdj6Gwbb/xPzsw
         GDCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=krIguMSr;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id be14-20020a056512250e00b004e84f87a118si108453lfb.2.2023.03.14.10.47.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 10:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 915BD21A81;
	Tue, 14 Mar 2023 17:47:05 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6F60813A1B;
	Tue, 14 Mar 2023 17:47:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 89lmGhmzEGRYEQAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 17:47:05 +0000
Message-ID: <2f6cadce-3680-f80c-7016-5300e9b2ff9a@suse.de>
Date: Tue, 14 Mar 2023 18:47:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 9/9] iscsi: filter flashnode sysfs by net namespace
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <283ecc31424b7f5e8e3dd68aa2283fcd109de145.1675876736.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <283ecc31424b7f5e8e3dd68aa2283fcd109de145.1675876736.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=krIguMSr;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 195.135.220.28 as permitted sender)
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
> This finishes the net namespace support for flashnode sysfs devices.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 34 +++++++++++++++++++++++++++++
>   include/scsi/scsi_transport_iscsi.h |  4 ----
>   2 files changed, 34 insertions(+), 4 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2f6cadce-3680-f80c-7016-5300e9b2ff9a%40suse.de.
