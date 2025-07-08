Return-Path: <open-iscsi+bncBCHZVHVFVMARB56MWPBQMGQE3NUSA6A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C309AFC72A
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Jul 2025 11:35:57 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id 5b1f17b1804b1-4532514dee8sf28025275e9.0
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Jul 2025 02:35:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751967357; cv=pass;
        d=google.com; s=arc-20240605;
        b=G0+PTfT0tJAwHQB9vyPDInHGZc8SpVleUfDCBGnuNOc+IcTiqll6sVLL5zuDcFjv/X
         oi5dkF24isEXNU8iy3E2PNZi8AVlKTln7Ly/ebpCYYFwJxBdn/VPmjgQPVIEvWmWkjz1
         IKNxVNSCq6Qt0VzY475BgKOXIP7sS6hhA3k2GDVxZOLf4Ih57uXwhY0HvtRjeaOyPkC+
         s6ZKfW9V3H8z6bf+UHb2JeE0OL5H34yBkUq0qHNNX/Ekbiw1BpMVPzxNcm8pBFZfANln
         P9fF/718yJTv+uq+YMFlJBSfXGI1iXcyew2ZrCTIgJPf+BjOB5KK817I4FOC6/uBafS+
         Wurg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=fkDn2fnLK5jnvWSoTOtHJeQB/aQb8QE4S2D6iC774M0=;
        fh=43lH7UUdq1n5u2C9aemAC+gQ3wsO2ntzDlY3CFkbWUw=;
        b=V2zBiNW1QWJugmPz+GAKbVI7pTVi2u+ZY8C1uj7EEi5NHfaS8O7bGFMUGvHjK5X7HK
         +4xZynxWmDCQahQS11sPbsx59/M4pIXjc3EDkP2+IxDMqxwE8JY1TLo3APe4sx1oB+U3
         bQ8e4uMCFBljnqL4IV4w1tUnPdIPqFsAJUNXwhd07lIkgAOrHbfDk+Yn11APJMWge5gJ
         g9VkxUJGcAupYOGTisbEKIE8sr/FnkO2mtJCybh6AXLuTYDiVF5FeJfZ7bUWeSr/H2+f
         jPKHnT4jp6a4UPoYU6Pnx+bJrZRoB6OSMlN+SYXVt9khwMKg36WCVl+WBvr5zvudAi7P
         Ze5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TBGUZV5i;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TBGUZV5i;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1751967357; x=1752572157; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fkDn2fnLK5jnvWSoTOtHJeQB/aQb8QE4S2D6iC774M0=;
        b=OEKP/hhK3S2dddbKyC+3eTFpxKO2pwnJzLpq1T4cEy+f42S4eFvucRZxWoi0HncgAW
         0PBHPdtJSjuhkQotOTRiHRQf2gpFX7FDfeGQnRwY/e+/HokFC6I4mKR4Gi7zXKh9XsDc
         hX4AHpCfha5l95ua0lM4aR3CKSK99jP7thULhW1WFvzek+Njp+QHehO+YJUHRiDuNKsl
         n+p6ybdvDMx5R5TC8Zy+SNS16plq5typBTDpyFT+fcPeZeJ3RL0insEcRBaJlZhrIo2/
         SUtDaM1A3J0Rr3XPdZt3z7hIEuhpLHx4oo1HJ2gkqZwE6zIKN1mPobBBDCZOdyUNdbwz
         elmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751967357; x=1752572157;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fkDn2fnLK5jnvWSoTOtHJeQB/aQb8QE4S2D6iC774M0=;
        b=nBcpHni5CpRSPxORTQkUsMobGOIgDh0L7qbwmTABqa5IBsws9fmtfx2cdd/lhWCLLa
         MifWi1gsn1KbmEZC5EY+aSn1Jxu/fBrgB36iOO23gxAuMPN4MKjftALvORrTX7UeX2DF
         IXWUrDGMQ5527yM+Lz1okCh7GBxcJ+DPmuma6GrsjnN6KojRNOucDZo28UGYLk4h5y0U
         oBq4Wx+NuPdcmXa7sqQxgICNDOlUpy8/cGGA4cbDuoDPbz8drlR+D8UOjw86ZJoom2xG
         pD95ZsMOYp2lOoxZfw3NlNHQgEvCOUojB6juMCKmdaYtCL6Dj4LyE4e+4VNAhhb5U4xx
         ae3A==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUlYqu3KeN/6TE1hwhMhtCcLhvUO6Xa/HQJGBZSfUoGrG3Fn1Cd9QL0Lu9eBU8VngUq2UihPA==@lfdr.de
X-Gm-Message-State: AOJu0YxNnE2iejaDoYlKGsN2nhZgLCtdea9aT5xqR83b5VwlAKm1bqls
	AyyT+sKBGy2HPR4eEy0uungcHZsLdAcunoN8Z4XJb9cYJlJCJ5Yf6yFC
X-Google-Smtp-Source: AGHT+IHfnt7pAZhDYTJEtjnw8fnvUZcSB4zMkbIBZaj6d/Si4lfqdY1/CNyHlPBhbxXztV2pDcLYww==
X-Received: by 2002:adf:b651:0:b0:3a5:2a24:fbf5 with SMTP id ffacd0b85a97d-3b5dde679d6mr1373859f8f.18.1751967356699;
        Tue, 08 Jul 2025 02:35:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZeF4j62yh1CatcFTTSmkFL4bcJ9saaBv8/Y5QpWpH3g0g==
Received: by 2002:a5d:5d87:0:b0:3a4:bfde:c058 with SMTP id ffacd0b85a97d-3b49759211els1674973f8f.2.-pod-prod-02-eu;
 Tue, 08 Jul 2025 02:35:49 -0700 (PDT)
X-Received: by 2002:a05:6000:218a:b0:3a5:527b:64c6 with SMTP id ffacd0b85a97d-3b5dde59bfemr1448250f8f.1.1751967349160;
        Tue, 08 Jul 2025 02:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751967349; cv=none;
        d=google.com; s=arc-20240605;
        b=GARzjOMLTMs5AiGEQq3WlEdPYueSpNN+T0C427uE9z4BPmnpRfbiCmZnzk1BVSzV1+
         5IuqjKDtE1fope6MZzSEMNf5vKfzCUspVHFaN39rpODx/sCmKedGJ7urF2xxc4M3tJV9
         DRruIhNQYpDU2dezQW+TgfvPdEJ42/2HfdRep7O8uEhupbpLcGaJM5WIW2aWo5ZQIYqn
         Yl1UmcYf5bnhtml0GfVlImNLFQEid2b55u13pPPUfjreCwJ6u2CvmO2oKYgxI2RmeT8X
         y+KpV2uwxkYsW42pdr612Hy5vGpMLOaIrK6dodHk/NtTGb9Z2+P+BGPuy4OfeJC20FUw
         ZQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=vIxAswFeaHobv02Z87+NVJayVXKDYgbUBdW4cNF67+M=;
        fh=tkgkuBYYVwvjkDXCNus7+fKV83xMe/ewsAte6UXu54w=;
        b=WuJFyD/4nqD9gYB8++RlP1+hMRZyQRke6wxMMhInRyH+TgnlYD16ykpYclhfAkXDPp
         WZTo20HCOd/pCBqA4MGSzUYu8zuzoJPRNpSM+qKwK0wUCe/6HrQyXGrqPOmHwdsj4TEI
         iGAXcT/qsYiJxaHP/gc/ESr+dajdKvVlbkEepcw4fyNwoLaDDHPu62/zx1VSqhTSXqp5
         bC1+CjyE9bIePHWwkfoOt88IPpcYoG9KJOXnWUrbJdoqZm5H55xn1GfCDOkliQO5nk2V
         rqisEYxeIbeaBrTq+cZot5GtJzgA4/PMuNgAYAZUYUxwhJ2fLwPGhqpDAqR86JPgCa97
         Vujw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TBGUZV5i;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=TBGUZV5i;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2a07:de40:b251:101:10:150:64:2])
        by gmr-mx.google.com with ESMTPS id 5b1f17b1804b1-454cd486556si547835e9.0.2025.07.08.02.35.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 02:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:2 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:2;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 554F21F443;
	Tue,  8 Jul 2025 09:35:48 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1A93C13A54;
	Tue,  8 Jul 2025 09:35:48 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id nyUABXTmbGg4bAAAD6G6ig
	(envelope-from <hare@suse.de>); Tue, 08 Jul 2025 09:35:48 +0000
Message-ID: <c72cc8b7-f55d-4691-9161-c20d07fde99e@suse.de>
Date: Tue, 8 Jul 2025 11:35:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pps: Fix IDR memory leak in module exit
To: Anders Roxell <anders.roxell@linaro.org>, lduncan@suse.com,
 cleech@redhat.com, michael.christie@oracle.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de
References: <20250704125536.1091187-1-anders.roxell@linaro.org>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20250704125536.1091187-1-anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.de:mid,suse.de:dkim,suse.de:email]
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: 554F21F443
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=TBGUZV5i;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=TBGUZV5i;       dkim=neutral (no key)
 header.i=@suse.de;       spf=pass (google.com: domain of hare@suse.de
 designates 2a07:de40:b251:101:10:150:64:2 as permitted sender)
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 7/4/25 14:55, Anders Roxell wrote:
> Add missing idr_destroy() call in pps_exit() to properly free the pps_idr
> radix tree nodes. Without this, module load/unload cycles leak 576-byte
> radix tree node allocations, detectable by kmemleak as:
>=20
> unreferenced object (size 576):
>    backtrace:
>      [<ffffffff81234567>] radix_tree_node_alloc+0xa0/0xf0
>      [<ffffffff81234568>] idr_get_free+0x128/0x280
>=20
> The pps_idr is initialized via DEFINE_IDR() at line 32 and used throughou=
t
> the PPS subsystem for device ID management. The fix follows the documente=
d
> pattern in lib/idr.c and matches the cleanup approach used by other drive=
rs
> such as drivers/uio/uio.c.
>=20
> This leak was discovered through comprehensive module testing with cumula=
tive
> kmemleak detection across 10 load/unload iterations per module.
>=20
> Fixes: eae9d2ba0cfc ("LinuxPPS: core support")
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 1 +
>   1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index c75a806496d6..adbedb58930d 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -5024,6 +5024,7 @@ static void __exit iscsi_transport_exit(void)
>   	class_unregister(&iscsi_endpoint_class);
>   	class_unregister(&iscsi_iface_class);
>   	class_unregister(&iscsi_transport_class);
> +	idr_destroy(&iscsi_ep_idr);
>   }
>  =20
>   module_init(iscsi_transport_init);

Errm.
The description doesn't match the patch.
Care to fix it up?

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                  Kernel Storage Architect
hare@suse.de                                +49 911 74053 688
SUSE Software Solutions GmbH, Frankenstr. 146, 90461 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), GF: I. Totev, A. McDonald, W. Knoblich

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
c72cc8b7-f55d-4691-9161-c20d07fde99e%40suse.de.
