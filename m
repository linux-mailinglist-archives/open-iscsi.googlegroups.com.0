Return-Path: <open-iscsi+bncBD4NR6EBY4EBBHGE2SNQMGQEX3ZXKJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F077E62C6B4
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:10 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id 71-20020a0c804d000000b004b2fb260447sf13834396qva.10
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620830; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARI/I7YwgHkrxExCl4zW37PIF8vB9wjpn9h+n/s5tDiY86Bd7KQdUlJdtM0ANgtrHY
         SV/V8WlZ1shlmoi6rJuTAfg/zlkotAlnX5HUYCdDdoi+sedOb/nQDhC8ZWjISOXzZj+/
         MUIlvLUsIgUohECCgofAwRkX/qJP7ZRipB4DiZ6JTvIH6fjqawXMGqnlf0fuYD2ajPag
         ra7UqGKwNRuJHnWAsaEaVtg0lm+i0HZcjddtPiH/SKRyKoaLN2ZqiUe3EIOddSseZA+Q
         btHv3jlt8B5e2vkHQbaE6IQluGaMDwobokixFD+wemaKFDfplRxa4Aa9oUBBR73qEzHV
         DhfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature:dkim-signature;
        bh=z0liIeYJvnPw+yevPHipnIDtNbSlbYrg1ei4QIQA4Ws=;
        b=ZBENKo4pNBfbT+js4xz40Bv+EsrT1dARF7wLCpht9VzbPMp4bk/IiLSjEz9sIo+Fg2
         CWUIod0TlnDb11ewFFJZEFn1Pjj12eDWt3GP2Wu/TxafIigmfTUiYegdOmp0GSKEWOFX
         p4SGOiKuv2YhJ9Re5A23kllo8KUIrd60xTIWMpz/e89QQ/dC3ut+1Z1aWthauXqMomcH
         ZWD3B6thAV6mXJkk/4Qip14MWlvJwKD/G3jaG+ajw79ySUesH/phGtHKSwoCDFbNWkQR
         ywwjwAp5fQTzIwZ6ghTgoutm6+LYJfodFzRwz9OcNcyVWjTtTQqaACac9MeDPU19oSU+
         tYuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=B8PJ9mjr;
       spf=pass (google.com: domain of error27@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=error27@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=z0liIeYJvnPw+yevPHipnIDtNbSlbYrg1ei4QIQA4Ws=;
        b=Ucw2mMpaD1HMv6VTuaEXciEIgtI5KXqrPl0XHgPV9ip5yu9n6bewwou0WCPfqjbbWK
         VKgzdyH4/RcL2VQGidcJeVCg7Po2ueKJhlimDDaf9+7NTKJdRpeLgfa5LVpBq+HX/6bz
         8ntOumhm0MuKkBJP387L4kI46dMKxFGF9r5WWzsF/loSGemB2eQF5yUVpl21SayTWHD0
         Fdl7MWbiPdQnBAz/5lWXGYK43vIIfZ9rlvaHY43rUq/0mYXGpoHUc9PCe2n2AG/uV78q
         fo1/HfPhy+upiP+Z5EEa+oC1fRnlFdYmHyQI/QyD5UjeDi3eH3D6gqA22AVUGTbKUjDZ
         JWIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0liIeYJvnPw+yevPHipnIDtNbSlbYrg1ei4QIQA4Ws=;
        b=HYfkRRkJ+zwdQLPdXLppxbx9D/s/htDVl9Wbv8rprCunqVZqiWXJPQP4Br0UNxjMxx
         pCyY5SEPYisx3cvofsm5OohVnQ0m2Aa+91WIJG5eWxlggteb1C7L6EGRdqpC/PqdES3o
         63TZvzQWpCl1z+KwKQWlikdRZc/VJRFEK/P6ezgxH/bDi1HAmZW3xPkFPPBOg/JUn4Nm
         INlvm/EsdRBJFxTaz6ulypk406sp/HgxAzUqH3gQqAmsXjeSjj9EHORKnqMIyIk6aGft
         5Wl+IaRlfUcqrjzNXrdkKCEhzOh+8xXSEH3qk1igT1Yg91IyAijqs60KX/deiUXyE9Yh
         TGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0liIeYJvnPw+yevPHipnIDtNbSlbYrg1ei4QIQA4Ws=;
        b=MyYqENc2Z2KZ/Fc5gQzZTpAZwUiyRiG3M89IqBJd39Uya4gMywnDGTXikEbC6Bn4i/
         zW+SIRIu7PxcSRRPxXE84bLxpild14xD4E+9C2Zen+Ee6tUo3sBn+0NPEEe4LztN3z0f
         wH/c21oB1cP481DLQQV9qBuMzHPukcnZgN5evwg1vR9LnF1V2/9LwXpA0HMb/JhBHGAO
         vkl8wlTWHD/XnYtzsGMCQheHghC4VkqmNAhyHIuy9AgHkYcdb4xXv3rrGMzJfB/ir5dh
         7OQj73o2h2MgTE5HggNt26J6dxsbeSCgA0mJ5nJ7KhaxGIkmki8+cPLLg7PU/9jy+4Bz
         CxOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pltzk77dZ0IVVZO/6WNhiA0CxE1L5791zBgCdqu18wqTOE/Qvo5
	NWL570j5OKckpyQbGp97I/Q=
X-Google-Smtp-Source: AA0mqf4fPq+jBGb1acrC3H87OsG2yEdTwsYeSmhUumUGrk+LwRVv18J5BaNSAhv7eaRh3NTRaRtiGw==
X-Received: by 2002:a37:afc5:0:b0:6f9:bc2a:281a with SMTP id y188-20020a37afc5000000b006f9bc2a281amr20424266qke.47.1668620829812;
        Wed, 16 Nov 2022 09:47:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:6f19:0:b0:397:ab6a:3f0 with SMTP id bs25-20020ac86f19000000b00397ab6a03f0ls11203505qtb.0.-pod-prod-gmail;
 Wed, 16 Nov 2022 09:47:08 -0800 (PST)
X-Received: by 2002:a05:622a:4a0b:b0:3a5:350b:b6d6 with SMTP id fv11-20020a05622a4a0b00b003a5350bb6d6mr21857004qtb.130.1668620828529;
        Wed, 16 Nov 2022 09:47:08 -0800 (PST)
Received: by 2002:a05:620a:450e:b0:6fa:b8f7:fb75 with SMTP id af79cd13be357-6fb0e735b1dms85a;
        Tue, 8 Nov 2022 21:08:37 -0800 (PST)
X-Received: by 2002:a05:600c:54ca:b0:3cf:8e5d:7146 with SMTP id iw10-20020a05600c54ca00b003cf8e5d7146mr21659588wmb.191.1667970516254;
        Tue, 08 Nov 2022 21:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1667970516; cv=none;
        d=google.com; s=arc-20160816;
        b=zsTrYUwaW7UDOYtPC7oMBvTx299JUohdgc19Q66ekx7WGpTJBLjIKfQU9eN9bFCPex
         y+bvEWC0iFQy8icM53g6yf6U3QVLXM4NWPbaPZ24VzOky5TGkCph0c+ZVfusjNE6csAc
         dHl1dXK+cYSscTExZZu96FS3Qi4sEB9PhA18Mzc43FkGrC8AfHYX6yLHSLx9cDe5AVgC
         myr7q1w86StDrnUHzU5gC8qsdj51Lvi/AF+ECn/Bdic5fRS0F7JsWQVwlbyEkulwE8fV
         Y2Pp8yxCjVqwQwC76Mnc2oV5a2KJrzHF6/gJK2SfnLGT57lz4awq9zo5OoZ5Q/NtNNRI
         jp5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=v3jmOsDYD3eDGL/HXAFuu3q5wn5DTfdd7ABqci8j+7Y=;
        b=v/Gw6pOePoCmsIkZGr7MxGTBkf37/+/i7cw1hu5ueiln3SVI0tf0+KSxkBrhqXaep3
         j0Yc92XqDTQDOi55ZAFHT72c4dNqjLb0FnllASeemk51SnamwHUKYYoj2TE43G8nh4kS
         1LgRU7OQXXkqXGRzT2X2J0FJmctsfA0BkkyF9fH2U3sXLKQH7fUX9DopjjokIPqiwA12
         5h+KZ5dlVAK7xxO1m740MwmzAQrO0bN94RPY0nvQb2xIyAP7Talqj0oX+J1m07ZMpRsO
         n/+82GN/xeTwTVAMqaFEXE0E2BOCYUzX81DXfjmPIPlWPl1WLr7efcqD3FOVgGViPlAm
         wcxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=B8PJ9mjr;
       spf=pass (google.com: domain of error27@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=error27@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id p190-20020a1c29c7000000b003cfbf566cb8si33591wmp.2.2022.11.08.21.08.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 21:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of error27@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id y16so23989249wrt.12
        for <open-iscsi@googlegroups.com>; Tue, 08 Nov 2022 21:08:36 -0800 (PST)
X-Received: by 2002:adf:b353:0:b0:236:5814:f4dc with SMTP id k19-20020adfb353000000b002365814f4dcmr35860498wrd.189.1667970515291;
        Tue, 08 Nov 2022 21:08:35 -0800 (PST)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id b9-20020a05600010c900b002368424f89esm12041478wrx.67.2022.11.08.21.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 21:08:34 -0800 (PST)
Date: Wed, 9 Nov 2022 08:08:30 +0300
From: Dan Carpenter <error27@gmail.com>
To: oe-kbuild@lists.linux.dev, Wenchao Hao <haowenchao@huawei.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, linfeilong@huawei.com,
	Wenchao Hao <haowenchao@huawei.com>
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Message-ID: <202211090606.r22uKz8I-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20221108014414.3510940-1-haowenchao@huawei.com>
X-Original-Sender: error27@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=B8PJ9mjr;       spf=pass
 (google.com: domain of error27@gmail.com designates 2a00:1450:4864:20::436 as
 permitted sender) smtp.mailfrom=error27@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Wenchao,

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Wenchao-Hao/scsi-iscsi-Fix-multiple-iscsi-session-unbind-event-sent-to-userspace/20221107-202840
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
patch link:    https://lore.kernel.org/r/20221108014414.3510940-1-haowenchao%40huawei.com
patch subject: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event sent to userspace
config: m68k-randconfig-m031-20221108
compiler: m68k-linux-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>

smatch warnings:
drivers/scsi/scsi_transport_iscsi.c:1691 iscsi_session_target_state_name() error: buffer overflow 'iscsi_session_target_state_names' 4 <= 4

vim +/iscsi_session_target_state_names +1691 drivers/scsi/scsi_transport_iscsi.c

3aa534a2c8b080 Wenchao Hao 2022-11-07  1686  static const char *iscsi_session_target_state_name(int state)
3aa534a2c8b080 Wenchao Hao 2022-11-07  1687  {
3aa534a2c8b080 Wenchao Hao 2022-11-07  1688  	if (state > ISCSI_SESSION_TARGET_MAX)

Should be >=

3aa534a2c8b080 Wenchao Hao 2022-11-07  1689  		return NULL;
3aa534a2c8b080 Wenchao Hao 2022-11-07  1690  
3aa534a2c8b080 Wenchao Hao 2022-11-07 @1691  	return iscsi_session_target_state_names[state];
3aa534a2c8b080 Wenchao Hao 2022-11-07  1692  }

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/202211090606.r22uKz8I-lkp%40intel.com.
