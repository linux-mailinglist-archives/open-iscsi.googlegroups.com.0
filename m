Return-Path: <open-iscsi+bncBCHZVHVFVMARBKV7YKQAMGQEW24FT4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BF56B9B46
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:24:12 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id p36-20020a056402502400b004bb926a3d54sf22573681eda.2
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:24:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678811052; cv=pass;
        d=google.com; s=arc-20160816;
        b=FzPqVKbd6hPiZh/v5w2EtS57g8vGvJxyAI72kRCrWpb0+lzVz1xjClaMfYX+uGZUlF
         jyNBdkr8CT7guFTuohfSq3Xy4x7HTSX0F85A+3a6KO56uMhMQay9lSaXW2k/gyQK85NU
         58tCZHnGwW/dSKBvLA/WEzDZDjacO0zVj+L2KFpR6Uqt0Y8tnwcYRobZM2sX0kuJ1+Nn
         EtrCBJUEhTq8dyD5Sh93vPnvuPFVfikeYGprzsUe3l7rkUdZsPwMM0+zaBmOy3SjCfBp
         G5ttosHr9eaX2cgkXMb8CfP+g5UPg7rmWljFJ52TgKzeDIJAVvOH/hZncrgRGOZyXoeE
         lxgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=kCAx0TnT13eVQObRswt3upKLt0Yhpya1tB8bFFjxpaE=;
        b=F8MlgyyAsiAcsBPIZ+/zRDQaXYttIoukUetENkq9qCkmjf8dY+CTHgmJRtQQ+3Beeg
         aLf50IExqeVxgFApriqSEf6+B5xy3RfS045fbr+iS6yb9SAj3I1bwBXPThbIaYvMdJPZ
         6MUvA8qKRcVuMPOaUkhiqHB8onsgHOTnngtOIYud3pA+HMplfIoLBFfThJ5J1Q7lQmpb
         VWeSELjKyrZnubdp+N8+n9VVpUQ+Yo6j0DDInMqzC8S3LA4HiuuA93yDpYy1VmGtgNTw
         5QxGstws0ZQMbkDIiJ7nC2l0KJdMLA1ChSL4kMIkf0L7hRrghF9fNOgYf4FdI1HQiebS
         hb8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzbsj5gR;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678811052;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCAx0TnT13eVQObRswt3upKLt0Yhpya1tB8bFFjxpaE=;
        b=TfgygTdpgOFP9h2CCwaV3OpMz77SnLJv5mJBu7jxChZY9InL9MGNceqqvHd/u8cQdp
         TZy8F4Dbwrmk+O6pULyWQiNb1OeXVRwqWhCorXkz0573Eynuas4PZgNkJvdvfV72kW7b
         VuS/ZkIsNkCbUBgjlhuwAS6hwdBsMeLfjqRJbEV6ZqFXeZ9TsU52rnUrmWz7uy2Ip6cf
         CNLHg0mzq6LyQvEIe6ApIiTfPK8r8SjMI3X3YNFPpJD38wgtAdzpeTKpGNsLwciEEsOR
         9AP5fsBjQqYfijZqU5SdpwPxhwKDB5mtLyuROhUUjV/VOngHs+kbyPIuPz9+V0TVwA5g
         6X7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678811052;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kCAx0TnT13eVQObRswt3upKLt0Yhpya1tB8bFFjxpaE=;
        b=yXia8YEe6J5x5ODGwuWjgJWVaYcBuDkpZhOEiPT7+wk71bHDyvT1ShrytaK4xJtdeT
         mQa0EItxN+EMDfnP/pboV5uYpkAQoJRPaZ9k1V0kOZbtRdy/7oYHSRuTdvUAywJcL+KC
         C158QkB4SeUiaqqSNSqG1LpxnxZAWx2452PX1xXFX3tE9pXAFA81dKbmpFeM5a8bDVk6
         Nnph72Xvn2zy86z+Zj5uheHCfmnMtNyKjhkkXgej48bZN71xdlOQZLEjAXM+80YOQNKu
         2XXhHdp4TSuV2dvcdKaNFi3eefSQdQkEh0Wx0mwiMoGwZNiylC/L2JIPlSSRzaGl/w9O
         qO2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKW2/cVvIpCt+ECG5PlO1okXYtZwf3mw9DZfKYt3hzBbw5j+w6pV
	43Ls1elseQ5KIjcaxJRCCK8=
X-Google-Smtp-Source: AK7set+5cDPaOaMJelKGaP5WfNkNV3A4hY88P3pb8sjn0S5xxEOqDwhxXYUO83IO6KEup1tw/zzYeQ==
X-Received: by 2002:a50:aacd:0:b0:4ab:49b9:686d with SMTP id r13-20020a50aacd000000b004ab49b9686dmr9008899edc.1.1678811052279;
        Tue, 14 Mar 2023 09:24:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:5510:b0:4ad:7c6c:4f6d with SMTP id
 fi16-20020a056402551000b004ad7c6c4f6dls1443625edb.1.-pod-prod-gmail; Tue, 14
 Mar 2023 09:24:09 -0700 (PDT)
X-Received: by 2002:a05:6402:32b:b0:4fb:395a:6aa5 with SMTP id q11-20020a056402032b00b004fb395a6aa5mr9731253edw.9.1678811049632;
        Tue, 14 Mar 2023 09:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678811049; cv=none;
        d=google.com; s=arc-20160816;
        b=WcMAivEVsl6rSj9BLrt5ET4SAUbJHRdMFAeVVEW9qjaPlu2Yp5HNDrf5E9hkvL6pQr
         Qg6RFop0v8/SV+8Um7v6i3nX88xG1FCqvCyVXVEy6YCWHMXIQQjMNPI5orwULfrX4wQt
         p3aGaazSWXfAeh6Ohh5CGqEOPLFTBPGjvNoJI9uBT8HgalbUljPVuO6wHqYQs7uAs899
         WqrmmNvczlbRdAd+A4h9W3HEQ39oalQ3Q9p4GOgRnL3yLL2xLuEx5+upApV/Evfy2QVo
         bih47gogsGecZsFmB3pMJ81TaIRtwC3Wg5tUghyjeSuJY+WlOnfIph8ft4rwoGev+9zP
         0LnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=2yCT+hn3LOVwZ3gEgePdUHNGzzfSdkH+Xu/nGZDXQvM=;
        b=dYviCy4GCqDSKe3zIv+8d0elBa3zk77jh1jkSoQflR3eRwl3aWcBgiJKv7I/Aw86Nr
         mbyd3NqvUFu2ZWC3Yr3nmzVV/RlpmTjxJUyLrpslDTEwW82JVvmJRx9SfW+l9LMjiKoJ
         wYh9yPEFKqll6G/Sm0eJmmxYx5O5wBeZs2MVoleMijtxOjV/tge20NRwzeRoNdfpCcQs
         wfNDd/nq6LtQp5F+/W14obbn0sOSh/PGZOe6YbBfkGToQ9Ps6qh/adc09yTDUl9E1yP0
         wUBFD0BlU8jpY1UdRL2U+dO+tjSd8vaQ2WU0wXcDR+pWATTVetfuk6eJcHS1VqUanZQU
         JV9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=Nzbsj5gR;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id g10-20020a056402320a00b004acb5c6cf0csi162231eda.0.2023.03.14.09.24.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 5BA8A1F8B4;
	Tue, 14 Mar 2023 16:24:09 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 3AEAE13A26;
	Tue, 14 Mar 2023 16:24:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id vhGyDamfEGS7YgAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:24:09 +0000
Message-ID: <e71a718e-9d36-095a-9c7b-ea7761fe486a@suse.de>
Date: Tue, 14 Mar 2023 17:24:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 3/9] iscsi: sysfs filtering by network namespace
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Lee Duncan <lduncan@gmail.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <1ce0ef45c40b6873f2889bbcdc1a74d7fc04e370.1675876734.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <1ce0ef45c40b6873f2889bbcdc1a74d7fc04e370.1675876734.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=Nzbsj5gR;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 2001:67c:2178:6::1d as permitted sender)
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
> This makes the iscsi_host, iscsi_session, iscsi_connection, iscsi_iface,
> and iscsi_endpoint transport class devices only visible in sysfs under a
> matching network namespace.  The network namespace for all of these
> objects is tracked in the iscsi_cls_host structure.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@gmail.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 124 ++++++++++++++++++++++++----
>   include/scsi/scsi_transport_iscsi.h |   1 +
>   2 files changed, 110 insertions(+), 15 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e71a718e-9d36-095a-9c7b-ea7761fe486a%40suse.de.
