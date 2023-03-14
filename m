Return-Path: <open-iscsi+bncBCHZVHVFVMARB37FYKQAMGQETI733PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7086B9D4D
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 18:46:25 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id k18-20020a05600c1c9200b003ed2a3f101fsf1977500wms.9
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 10:46:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678815985; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVcP1LQwZuknyY6akSr0iuNmP/lc1kaihVEu388p7hdDZWMX7ugxjkc4b1MlYmrTQd
         jrmSRQng4jq2H9KnAXSwI62AemjqwmZatmwvxIF9kFdfiOsnbu29czNM9d6LAfVxdmCa
         lMizp7vPvFkRyeB8iizHTVJ6kh6VW5rPcVu8xJ0W1tzq6+cxBtU/1AOKpNLN4uKsM1Ba
         86e+xu0pol5QVGzAPOvDUDNDlDF7CvbNsSC3LeXWGr0mnCQXU7RoQgPANGgltZLh9u0z
         AQf6fTcL/PsAVRKDkLSlCLJsCXdUFbNYfcObd5m2v4qHqVGbIsQUBItZ6T9PG7uPM+Ru
         sgZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=K0L7dv9uWlQcPAn4NMGx2AjPo7LgoZVj8y9Xogs3MYw=;
        b=Z0bZfFeQ9VnjvK/SQ0zGVpgQARqlVw0xoNdIT3ilVsqHE/wT+QOD7+DXShHGmIYCEa
         ciXX3IRKE6n+fBmjwcFvhaufhlB0r1GhO7t4VPM82suX+KBBF8yucD1jLV5rZeXeQO2h
         vDIhkFkuJsSl1MUCLJQA34ulANGxJ0IYUyXRkKDN4S3CbbZfpuHcKi949XJAe/7Ghely
         7vUD1YBSg2vNb7KhDixdSkxpmIsiU1l8PtmnjAsy7K9rvOXbbHAgw2kGZ0mwD415f2Iv
         jkg611D5xQyxU92TOONsrUfTxyrqexJfDCce6utJxkFVsAW2f/GUJSB1JFTUm4SisRJv
         ZwEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=L71Bzken;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678815985;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K0L7dv9uWlQcPAn4NMGx2AjPo7LgoZVj8y9Xogs3MYw=;
        b=UYsuqHqTonOWxH9J1YTLd9GgrvDLzfarF9EnIhbLnYb5e51bDu2PzbZGjR4LYV2cfG
         bZOpwKN1uA6yUUPx87eknBzW0qWk3UzsjRr8B6ns9+uv8h0EfRQtcEo4dHwscnzixh1G
         h7jGg0uKR8CevkzsddzA4XlQs1pfBXtQFJxVPFyTanvq7ek0Nn9oUFLia0C8e+k4GTjO
         W2kPeF39V533h7HxoeQ2goQ9W0RSVPaRsxbQa/ezSBYTEXUUPcWceZcPwOPflgZK8/LC
         PBr7Rnu4AfluKkOHRMKuh5wycHYpUK/wpW6qOkgJ1z6gZ0ihGrjsAlhO1Cs3IW+2G1MU
         ZAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678815985;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K0L7dv9uWlQcPAn4NMGx2AjPo7LgoZVj8y9Xogs3MYw=;
        b=gqk9inIUHVusVHS4NMhhqb0qjpafYy7qnBkmQzAjvU0jsP3GH7HwQXowwTPcqi5mak
         H2ZxqsZLcI/xR2CPOI73GgEfnWOVBJ1xWCEJf4naD8Ti/Avca9dtxJtIauUf/WCfXCXK
         rmkS5fP3YbaYYqDiLv2Nl4FXL8fUytihDwwp7vQiCxNX3gZEU19/SC0JbpVncO5uSU/5
         NkYVDNyIspKUKY62qxSUwmVf8VFnx5IUknPe2xtNl097WRYcu2ypgeb053ksQwYZmmdb
         E15REAV+WGNRqBXtktsfJWF7+k9CWYxiLsBSfn62gHA6vArmlm7aSskkl/mPsoMNbCyd
         U5JA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKXn8T+7h1JS1UQchso89DA8UxHWcI+0zzhcND5WYnQo+etjOUK6
	48+Jg7RuwuxC8JxjqO9OXNQ=
X-Google-Smtp-Source: AK7set+euJ5aYRWzIW8qWo6AV0T9G+BwWGCcF0HO0NFPo14+ZLJn7cmEpJoy8SovyuDfPttnnphA3Q==
X-Received: by 2002:adf:ed0a:0:b0:2ce:a8ee:7d3 with SMTP id a10-20020adfed0a000000b002cea8ee07d3mr1993891wro.7.1678815985202;
        Tue, 14 Mar 2023 10:46:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1c99:b0:3e2:165f:33d0 with SMTP id
 k25-20020a05600c1c9900b003e2165f33d0ls9039092wms.2.-pod-control-gmail; Tue,
 14 Mar 2023 10:46:23 -0700 (PDT)
X-Received: by 2002:a05:600c:34d5:b0:3ea:f882:bb3d with SMTP id d21-20020a05600c34d500b003eaf882bb3dmr14609095wmq.4.1678815982968;
        Tue, 14 Mar 2023 10:46:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678815982; cv=none;
        d=google.com; s=arc-20160816;
        b=tnMhpIHB4v9VwfxbfXCBl30Z+h2aWI0dO9128zO7ADCWeHu0fyIB6o8rxsN3gFvrUn
         rtTLTyrEVWI3MXxzbtBqdxgECo7AkvC7ei+BrjvwH24766N9+X+gFyzuVFM14bHcrpwh
         4cfeI3lQGdpRed5zoM5Usam/y1ei27SDLuoJG5AjPwD/gGNYVkNLTrjG4Pz440bheqWm
         dNjB0LQG/JFlzlwIM6VcXurQZESdJfdX2USUmiDNuZZW0Ft4AkatHPpq8o4GNOzS5+dP
         02OK7hVaI6NXltK/a5u6XGvfD1MNe++Wk/MdCRJIv/TvcBi+AAwn6e/Z0OSGDitrI6pz
         jHUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=LWPTcrU+Vc7dUfMqSqw4m6q+HYA7vaR8BcVAMYrFIss=;
        b=FKDBsBFohcNpn5BVUFeZNp9mJEBI6UthMUjsFYuM1gBwf5DWlU4GaIIXpY2+Yqo7nA
         /xDoml0sLvtc/Dq4N25VQnGL2bjJsJ87lXma66zHAZDPC2d+gaKbrGDw36YAp8XfTfLv
         wbcNXvkYh0yZK5bNAHS2M1BkpvMUEn2UYh8voFqdIdE1kuY3K4H0wXZZ3wOLRvfT/CyF
         adh32vIzg3c/PWrbZGGpBUoe50tsprrFrLEF5VO5sHLY8mVABmKgqlhoqH7aLPwFwozm
         2GmuqYIA5To/+7pBNNYEcv8SQ9ya6mACVNH+pjcVJiaJoQhAXYZwr4ssSgqJGOuzwZIz
         bqFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=L71Bzken;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id o22-20020a05600c511600b003ed29f3d6e1si171628wms.2.2023.03.14.10.46.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 10:46:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id BC9BA1F37E;
	Tue, 14 Mar 2023 17:46:22 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 97BBB13A1B;
	Tue, 14 Mar 2023 17:46:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id w35yJO6yEGQBEQAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 17:46:22 +0000
Message-ID: <0c54c25f-2aab-27b6-864e-2942ead86d36@suse.de>
Date: Tue, 14 Mar 2023 18:46:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 8/9] iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <8c1dfc1de1e0e6ba2669976b21f6f813699000c0.1675876735.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <8c1dfc1de1e0e6ba2669976b21f6f813699000c0.1675876735.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=L71Bzken;       dkim=neutral
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
> These are cleanups after the bus to class conversion
> for flashnode devices.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/qla4xxx/ql4_os.c       |  52 +++++++-------
>   drivers/scsi/scsi_transport_iscsi.c | 102 ++++++++++++++--------------
>   include/scsi/scsi_transport_iscsi.h |  48 ++++++-------
>   3 files changed, 102 insertions(+), 100 deletions(-)
> 
Can be merged with the previous patch, but otherwise:

Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0c54c25f-2aab-27b6-864e-2942ead86d36%40suse.de.
