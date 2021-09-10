Return-Path: <open-iscsi+bncBC63XVGIQQLRBR655KEQMGQEGLHTC6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 996874064B1
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 03:03:04 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id o185-20020a1f41c2000000b0028e608182a5sf20543vka.15
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631235783; cv=pass;
        d=google.com; s=arc-20160816;
        b=ey/tNWgmWgL5Xe1KxRCmE5rDOsWqTxiY3n3AdBzC80GvJ8ZTz4Me0fT2W0IeuTv2U4
         KtsL8mwvBduXOr11ukylLfA9JkmB0TnHiV461vLhL8vkONzTIF/wRVUfeyGAB1bQdB+J
         ovuxtcuktdbhJ14Q1qWxAnChqfWdUtsF9ZSUpykHeqDLu69dgyL969CBbt+drKLuoKRl
         JybuqfvtmlsVJ7Qipgl1eXcprfGSeCq7n3+64dAtJHe+TmQl5caJQka06rSPTJ3iTo/7
         NlpH56UjRkE+AcA7akd2LlnPadoTBNACJvFMP58IijhZUcgKUCoikkOnG0f9ZddYjo63
         /XjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=TsjSv2Af2Ntlik6+4xwf24EqtVfmS/GurcQhsSw+uTs=;
        b=1HxdaQCFQaTB/0hZP6ldOLqo1pTqsV8N6LAlIgqsRGQJb2q3TQDrYPMUaJUZUETrxw
         SD5aizAgqwJwV7oUo4MgumEI5G5qLDiBjB0caP/qsUQw2x9yDLwUgXFjQ62sjXLcG8IV
         k7FJYUM/RRfUl1AhBLusWi6z5dl/8WkDebCv6JuOsm2NgqZWYWE1egacXBYA8X++Q7UE
         tgX8S8ixC2oUa+AWfDz389C/7siXlYypGW40zPtSNPFrlIQP3OcNGWdhwWamo3INGkE0
         gVXLE3hkHuEp0rC0M8lKVkWNAIDKfs2c6i34z9m2aB5yeyZXACvxZV0YMJV3hP3caIWK
         hWpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TsjSv2Af2Ntlik6+4xwf24EqtVfmS/GurcQhsSw+uTs=;
        b=XwGS9M8zkB0qimbXcWMkCxObccmVK3auzI5/vGxoDKHwGAMn+rkdabJ48srU25wefG
         Wcueg3zx9MQ0s4gjecZgFB2owMf9/uqmRaSahMKiRNJU4RqD/yA+lsPIuXRk0IqwcFAx
         LvsfniF86Pk2uyfUunI/E/DPTHwzdbl5t2lXbXHdgetB4jOmg6CGnXhR+VwMqPoIQfVC
         CodOM+jL10PoVnF3gysSYbCV9EmDwOKmx5TbIgtCSI5ZEYBOf9rVC76yGZZOLVDqXD3g
         XVUL7Y5e3AXAM0ZYNtdC/NDsm/Y2hhxOWhAj7Lehd2eC4hygGcBZoFETo9zDgQne5c57
         5Vfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TsjSv2Af2Ntlik6+4xwf24EqtVfmS/GurcQhsSw+uTs=;
        b=DEKpQjpPEqNsaoDHowMdpJCAmurckHZqVK1cTvN5HsR/OvBhc84uP/6NuJ1TOqAM7C
         JMeu5uFTNa5N/lboLhDn+zK0DWmiajwPG3uTkB2n6nZpxEi1pBBKfrbUZXsvgTQ2f8ob
         DeCxv1p+88Fr3fX12m5sfDryGXV+BFXSE041mZfG40Qhm3M2eqI4psYlOOaQ0txh2j6W
         7GVCiggnN/ZdTOHo4KgXqcZ/37tHifwpkBHWtyvEybLMwu6sskpVMCN1tcGKqb6Aghwc
         FJ4DphBxaDQasfOdCGwugr8Qq3vTJR2XGzOmWByFnMdpO3oPwOGjp7c9LPJiUuVcBaa4
         RC2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531cJTGAkWyyQCgXUUtECH+hioDvBs1UPuyHXEO89eOpudq/Qz6k
	lCu3EEAy20Nxf+7CDQ5/no8=
X-Google-Smtp-Source: ABdhPJxVgaa4Gu7tNZIDFl1WsvpySVzl16pQT7PK4kNmw540w1XWvfCNqSVek5BfrV+etYjfOOHrYg==
X-Received: by 2002:a9f:3210:: with SMTP id x16mr4098878uad.135.1631235783668;
        Thu, 09 Sep 2021 18:03:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:1858:: with SMTP id j24ls422424uag.3.gmail; Thu, 09 Sep
 2021 18:03:03 -0700 (PDT)
X-Received: by 2002:ab0:3b93:: with SMTP id p19mr4376342uaw.72.1631235783105;
        Thu, 09 Sep 2021 18:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631235783; cv=none;
        d=google.com; s=arc-20160816;
        b=IvJFmbmc/qbd7eb9GaAOa02ZvX94h9hnXcsEJHZ/YqOoAhNtC7oqoKScM5jJx3Mvwp
         9LldVGxiJXrlbrhgy5zLopqhnMiPnYzLuWRoX0ZpoI34ZmeKnksn9UP1kI/dxTQFND25
         3dkNshc4gpNcaH0ju1NcrRLwWmU/h1lqLauCbCKPkgR9rLR+NZTNaByKpeX/mkbZMZui
         edC1qnlmCK4MWR7dwXdtbLhXx/TJ/dEApEM5MvF4nBZbBO9WALhpTuUqpQvGutlPZetd
         qBOIKaoxWfNhOig1PcRmPbRtDMMOR4vy2yS/4KzkZ3VH82IgEPOlavjRmCQnXxezJVtS
         CNFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=BVyNLgET5aaZXr223b5n8qDHRFQPujGQwXlJ9CAiv5k=;
        b=WG3ptdIifkcEQiR/6yf45XeWkaTyKLo4mIfdEcVtCQaO7SoURwat8CbTqoH68Op82v
         xq/VOr912+9hK/2FWN+vEtbuOFGXnRz13N7NXliKN5p0uPaSTQDVBxH5UmwnxV5fBSTy
         ifWUmxomBwDFngbiFz24Ju5hHNSncbJmyLBGrT95UIjOZjf5oxY2lDcKAk13Kc9M4i+V
         fT3l2zPIu2swCr0OqFLDILMKagpMjopruxUlxb1/EEglMjDINgi6rv3WFND+C34VEzSE
         hWmixuO2MiRgTLt0AiBZbvXMPX6moB40RsJeYGRsebbrThGCBqf4fycYp7fIMfXor6fu
         LJLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id q26si340867vkn.5.2021.09.09.18.03.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 18:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id E007C2200D9;
	Fri, 10 Sep 2021 09:02:58 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	michael.christie@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [RESEND] [PATCH 0/3] fix several bugs about libiscsi
Date: Fri, 10 Sep 2021 09:02:17 +0800
Message-Id: <20210910010220.24073-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpCQx1WHU9LS0lNQk9DSk
	9KVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MD46Dxw5Tz4LHh5RLS4jSEsW
	S0IKCUJVSlVKTUhKSUhOTExCTkpMVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSklOQjcG
X-HM-Tid: 0a7bcd3aaa6ad998kuwse007c2200d9
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

Ding Hui (3):
  scsi: libiscsi: move init ehwait to iscsi_session_setup()
  scsi: libiscsi: fix invalid pointer dereference in
    iscsi_eh_session_reset
  scsi: libiscsi: get ref to conn in iscsi_eh_device/target_reset()

 drivers/scsi/libiscsi.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210910010220.24073-1-dinghui%40sangfor.com.cn.
