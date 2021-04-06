Return-Path: <open-iscsi+bncBC6MFJWO34DBBL6OWCBQMGQEK7I73MI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D76354FB0
	for <lists+open-iscsi@lfdr.de>; Tue,  6 Apr 2021 11:17:35 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id b6sf9623676wrq.22
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 02:17:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617700655; cv=pass;
        d=google.com; s=arc-20160816;
        b=as8OeeDoFdU0RIw09wGdPlrU9vY98sAJdDW75pp5rBWdr9L1cIWlX146IAtjjQKjki
         /KtnQZ7wMj3w1KFlwxcZ7Tx7mkBEPgI4UoYa8kdKRK5ekXHfbl3WwnGCHGe/xLBfUnSv
         SR/8D3L6P/AdNXiSAH8UUrwW0dP0S4A0+2VNgKUYIgtLRo3eNT+mIalTiiSJctWwmE75
         FRU/uf7CyWK+4VbrmrZMM5AKKVnlUm1lSwa+SMoJ0qsmfWr8sqTOJjQLXHCqlueItN4u
         DiGRNnIvQh4U8DWWroWTchifXspag81QOZLOd7ZvkUj0x1AzbWwBZC6IsAp2yPEkxe4N
         EnzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:from:date:message-id
         :sender:dkim-signature;
        bh=coe0jssqk/yQyi0a3JHrli9COcirSS1pnOIb5qQl7e8=;
        b=rWMtYDVGioEaQWtJm2SjFsPM59DE0C/SjD5ouX7xGpcuG51mno0UTVoFbmm3Ah3T6G
         BDlRTsMlwEshhR9OaKTNu7NLPCC3Hb+A5Ek3+kzzAzLdIAAAQUdjoCpmTJ7kBLx/4RP1
         /RWpcI0F2dAe7Kl2XCvYR9BpcFXzU8FGJ1H7HrxlZLB56wpXKwuXNcbpox8p1/uEm+WT
         n2kTvkl5NP60tY//D+mTaXjmmfAhfZVeDeRJyHdBaM9NRsI9DZLCu6jOh5BCrJUmL1FE
         /you84NnKCohggVLmzfVG117rLjvz/wp0YI40Iiye15f+MUu6orotUonDTZETTuKEJQh
         RHdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=coe0jssqk/yQyi0a3JHrli9COcirSS1pnOIb5qQl7e8=;
        b=C2AZ8Rn5p3M57AomsFwVgfWlUMx2/433YCaff8lYYCDzn3jYv0m+3DFOHR3NaMN/jh
         9wBZ+BcVylvzhYaWsR09+2xAhKkB5AV33eg9FiUr2XDEflTUuDzLmPAbO0Gi9+rYj+O6
         6UwHuszEbzayxEkW3/AJ9rLbkLE9n/Zds2Ifrqs1/qBLagSN0K+zbjjLfIYGSxUl82ON
         aFsqdk+H3QCTBZgbbkPHHKeGIgQuJBi8Bd63JcRemkkeyfa3C4BAjcQtYUe3sZvf7tGG
         1ltaqtZ7/r+HJ+OWTcDnrjVsIVLvI4bDkBwW+eXi4LZxMcmooX3eOJAy5eUfQ/JlsF4Y
         bw7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=coe0jssqk/yQyi0a3JHrli9COcirSS1pnOIb5qQl7e8=;
        b=QwtGaF1gURMiRUYRyqAn3qNzYRear+pxjzX3JKPlbC/8sFS3Ow8aNshESCxphvAmUq
         pWPQ9Ou0p6IYBGtJxe7AQhqJeIQ09ukJ/h1eOv96EP39xD/D4pmnMbyfdNhfDkVGD2uD
         XjpCrg8GpR1COJrnlON2oW3tUk6m/baEWpK9TrbgNn5/0mJrfbw7Hau+drTY5W0Qjmo+
         Zx2n6HhYdw/DFcpr2mb0xXoGixznEHbFbDEXewg8pclsgSJxxx+0FcJqwNL3SOUXrmae
         OA7fBPSX+8WIIWxypw6F1LCfgLTkSz5vsskSyguwtR0hoV47XePgZL/3hv9ubR8XICrN
         +BqQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Rfl06bR+v6DTQKz1F2FOI9I/09E8DQBTdV7Kufg9wGLcPoFaL
	mQMkixHcZk0Dk9ZLIXUlE9A=
X-Google-Smtp-Source: ABdhPJw7EsAgxo/EtbiWhN3Lk1lI8R4g68b8zF++QBrclesMmnDLMq0J66vNOa/TyKwJoC4P0Sw30A==
X-Received: by 2002:a5d:4bce:: with SMTP id l14mr33826133wrt.99.1617700655537;
        Tue, 06 Apr 2021 02:17:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3544:: with SMTP id i4ls960376wmq.2.canary-gmail;
 Tue, 06 Apr 2021 02:17:34 -0700 (PDT)
X-Received: by 2002:a05:600c:1457:: with SMTP id h23mr3209709wmi.118.1617700654675;
        Tue, 06 Apr 2021 02:17:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617700654; cv=none;
        d=google.com; s=arc-20160816;
        b=SZ9hRLfEbmtdSPiUxzaYJniV35EUs2LPGfnRLo+0HeWw0Q74inDpPlHEIJ9kM8Ab6O
         EXAYqfl8qx32qzdI+lH96a1LJCcRtHpdQkI4f2SisC6h91UjxMR2hLP3hQ/WDgjRRbiY
         g6nUP+fnLZVG00/LeSjCpu/V30rCfyGFqhbKwSOBZlrVCboYYvi5h5bhUrN1Es7uimqx
         jkJMhTWsxlL+bTH959uvW/sfeQDgruK1NhvfgMMHTLVaEK1qRJkBUiuCTPo7/Va0hqkH
         DBSVlMFZNy/SMX/pnV0OxClQLs1OtRJuWzIvl0j1wJ3UllxwxLh7bl8BgP4zdp6bmdzx
         5kwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:from:date:message-id;
        bh=OHmY704QhyT9d+yf7Qfuf+2s51o1Sj83VP5Axwt4h4c=;
        b=jxbnYn+91rb1d8EnrUQZ2dmje8xW8yZddyn04x2ZItKb3kBCTSzJcsxg6hgFTgEL/R
         zHWKKuZT6xx0WXvYnnfRE459T6mhtFf5sKpTJZEOLSuVAUUqx2AcYWtpwcUU+UZ8CV9h
         xx6/KEk9yBfN3//K69q4BjRrVI81zNjmun4Jy2AK2ECuwdGImtWu8jrKtezL2Mf5dIT7
         /NSHSNx0f+DIfUOENye/8qPzhOkSYKZTQBuXHbAUROZ/5PXo+Fxb2M8Ufq5cLaZjnnsg
         JSA1YcLqJBOmE8ecPj2j1Vz6lQyS2sbs4J0l27urVs98NLAhAiSMLiSXC7mSG3on3vV3
         y3+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id b5si198919wmc.2.2021.04.06.02.17.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 02:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id DCEB36000056
	for <open-iscsi@googlegroups.com>; Tue,  6 Apr 2021 11:17:33 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id C83EF600004D
	for <open-iscsi@googlegroups.com>; Tue,  6 Apr 2021 11:17:33 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 06 Apr 2021 11:17:33 +0200
Message-Id: <606C272C020000A1000402F9@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Tue, 06 Apr 2021 11:17:32 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH AUTOSEL 5.11 07/22] scsi: iscsi: Fix race
 condition between login and sync thread
References: <20210405160406.268132-1-sashal@kernel.org>
 <20210405160406.268132-7-sashal@kernel.org>
In-Reply-To: <20210405160406.268132-7-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Sasha Levin <sashal@kernel.org> schrieb am 05.04.2021 um 18:03 in Nachricht
<20210405160406.268132-7-sashal@kernel.org>:
> @@ -2963,6 +2971,7 @@ static int iscsi_if_ep_disconnect(struct 
> iscsi_transport *transport,
>  		mutex_lock(&conn->ep_mutex);
>  		conn->ep = NULL;
>  		mutex_unlock(&conn->ep_mutex);
> +		conn->state = ISCSI_CONN_DOWN;
>  	}

I just wonder: Why do you set the CONN_DOWN outside of the MUTEX?


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/606C272C020000A1000402F9%40gwsmtp.uni-regensburg.de.
