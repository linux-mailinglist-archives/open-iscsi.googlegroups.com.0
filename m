Return-Path: <open-iscsi+bncBC755V5RXMKBBP43QPWQKGQE5DSFUQY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C697D47CF
	for <lists+open-iscsi@lfdr.de>; Fri, 11 Oct 2019 20:45:21 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id r15sf10319864qtn.12
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Oct 2019 11:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oq7j22YS0MiI4yLyNvgP4EyhbhofnJNnFVeN/ObLQsY=;
        b=odIr6Sk3U2SXQowHaiQdK47byTNTv6OW6qSpDMkXpAzdM415WW/HRUtJOXswmb+NiJ
         P1gpDg0fWDHIRdnE05pys7jsZHUFL1kNeGVLE+WiIeIGrh+/ku1FGcIACeOIgm64pDPK
         Fh+yqt8zkJIjpwsAbRMwNRth9zidLG1xo0+UtEdRFfPbY2yQ4Po0Rv2Y6AvIqYiImJGC
         bxyMcXzN8JWTBi45O0AitgfEwaVUKDKCxM8OE4NU2G1dyJR0tWmPfdY2LVBNJWT2VRKa
         uZQ5CejOWg8CW26PKJ009c42bGTI3z4Ou2vRk/TMonA5xKvlw+br+J7pGAbQ3hySenBk
         ywsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oq7j22YS0MiI4yLyNvgP4EyhbhofnJNnFVeN/ObLQsY=;
        b=TZRTOKoWMuTMnHyzu44XwTHrggBqRtwVu4e2HBPtYTcoio+ozONxd++Q3PMa9c7QaS
         wHb9OKPQH4OwIWABi/JL/gWOIozvz6LKOK+LgCOD6K1y+h2QHpemjMUrClwLf//H04rS
         xbopeCNRZgxphKcwlQoUui6SAq4QlikQm/Vr+2wXc5NiBYJAAeMbISRpaFC3R4/P2njR
         qtCGofpMn7L1QPAHbSuDezH2yjgtSXrGPZ+GTOT/8AEG727ibNyF43Eut5UyWInhSIpm
         bO1S5dWWMpy8g2tT4GklSx1Y42kD6uKDuP7rW8IofIh3qIUPg9zOHBHWlT0GrYiCBJPa
         7/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oq7j22YS0MiI4yLyNvgP4EyhbhofnJNnFVeN/ObLQsY=;
        b=O9FqmGphLMf90CHwbs5p0Zxv/qGLI/jEPTxkDtbew6VuY2siQc2S6T80JlJ6o4bk6p
         Yg4HU5FMOsTwYY7N/RRZnvGsGq/IPJn820340vD9G8jH6ITUM0r9LOsj+nvh3MbQodge
         i1rNj5cTMBqw5IB2aLmIJaVStuPpDobPOU8vigeF9LPR++fGY92NtvsT8JHV9LM8EgVK
         mwjXa2NPOBb9EPT1547q5TXmuWDNdjFZSBZB2+xZDfhx4QEcHRa9hQ+dFPxmt6LNPn2l
         nW/FWEhRif3yocvkWwFG4ps9I2dVj4qoapCEpOpK2EhY4NxRrLmGas66ZFkKRqpNjzev
         ZSAw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXdQHFRpShqhxqOv0xQu5t+kawUlvqmGXxz5ukKd3M0/bgMlOAv
	raSSLwaoHNXMI9M8YIOV0t4=
X-Google-Smtp-Source: APXvYqwnHAkzhp2wGIpKQTz0FIQdhxROCmEShir7BzASN4UshBol4qn40uZutVPk9PDJ62jf2vjzKw==
X-Received: by 2002:a37:9847:: with SMTP id a68mr17562300qke.223.1570819520073;
        Fri, 11 Oct 2019 11:45:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:aed6:: with SMTP id n22ls1457837qvd.6.gmail; Fri, 11 Oct
 2019 11:45:19 -0700 (PDT)
X-Received: by 2002:a0c:fd46:: with SMTP id j6mr17116231qvs.209.1570819519378;
        Fri, 11 Oct 2019 11:45:19 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:45:18 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <4616b5ef-9fc2-492e-8688-584518256bed@googlegroups.com>
In-Reply-To: <0fc26f37-c17b-46e8-b7c8-fd642c4573f9@googlegroups.com>
References: <0fc26f37-c17b-46e8-b7c8-fd642c4573f9@googlegroups.com>
Subject: Re: after changing storage ports from 1Gig to 10Gig unable to
 access the vm, Openstack level vm is going to error state
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4020_1092905396.1570819518413"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_4020_1092905396.1570819518413
Content-Type: multipart/alternative; 
	boundary="----=_Part_4021_510925984.1570819518414"

------=_Part_4021_510925984.1570819518414
Content-Type: text/plain; charset="UTF-8"

On Monday, October 7, 2019 at 7:46:04 AM UTC-7, Kuruva Maddileti wrote:
>
> Hi Team,
>
> We have changed the Unity storage ports from 1Gig to 10Gig. After that we 
> have deleted the old iqn's from storage level and compute level.
>
> old iqn's :
>
> 170.0.0.10
> 170.0.0.11
>
> New 10Gig iqn's :
>
> 170.0.0.20
> 170.0.0.21
>
>  After deleting old iqn's we are able to access the storage at compute 
> level, that storage is assigned to openstack vm.
>
> We have rebooted one compute host, after that we are unable to access the 
> storage and the openstack vm is going to error state. 
>
> As per the nova-compute logs, the nova is trying to search for old iqn's 
> which is not present that's the reason vm is going to error state.
>
> Could you please find the below logs and advise further...
>
>
>
>
> root@compute75 ~]# iscsiadm -m session
> tcp: [1] 170.0.0.11:3260,8 iqn.1992-04.com.emc:cx.ckm00185002995.b0 
> (non-flash)
> tcp: [2] 170.0.0.10:3260,9 iqn.1992-04.com.emc:cx.ckm00185002995.a0 
> (non-flash)
> tcp: [3] 170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1 
> (non-flash)
> tcp: [4] 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 
> (non-flash)
>
> We have rebooted the old iqn's from compute level, Storage team already 
> removed 1Gig ports from Unity storage side.
>
> [root@compute75 ~]# iscsiadm -m node -T  
> iqn.1992-04.com.emc:cx.ckm00185002995.b0 -p 170.0.0.11 -u
> Logging out of session [sid: 1, target: 
> iqn.1992-04.com.emc:cx.ckm00185002995.b0, portal: 170.0.0.11,3260]
> Logout of [sid: 1, target: iqn.1992-04.com.emc:cx.ckm00185002995.b0, 
> portal: 170.0.0.11,3260] successful.
> [root@compute75 ~]# iscsiadm -m node -T  
> iqn.1992-04.com.emc:cx.ckm00185002995.a0  -p 170.0.0.10 -u
> Logging out of session [sid: 2, target: 
> iqn.1992-04.com.emc:cx.ckm00185002995.a0, portal: 170.0.0.10,3260]
> Logout of [sid: 2, target: iqn.1992-04.com.emc:cx.ckm00185002995.a0, 
> portal: 170.0.0.10,3260] successful.
> [root@compute75 ~]# iscsiadm -m node -o delete -T  
> iqn.1992-04.com.emc:cx.ckm00185002995.b0
> [root@compute75 ~]# iscsiadm -m node -o delete -T  
> iqn.1992-04.com.emc:cx.ckm00185002995.a0
> [root@compute75 ~]#
> [root@compute75 ~]# systemctl restart iscsi
> [root@compute75 ~]# systemctl restart multipathd
>
> Try `iscsiadm --help' for more information.
> [root@compute75 ~]# iscsiadm --m node
> 170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1
> 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1
> [root@compute75 ~]#
>
>
> After reboot of the compute host 
>
>
> root@compute75 ~]# iscsiadm --m session
> tcp: [3] 170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1 
> (non-flash)
> tcp: [4] 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 
> (non-flash)
> [root@compute75 ~]# multipath -ll
> mpathb (36006016029104b0084e7955d71109aa0) dm-1 DGC     ,VRAID
> size=1.0G features='2 queue_if_no_path retain_attached_hw_handler' 
> hwhandler='1 alua' wp=rw
> |-+- policy='service-time 0' prio=50 status=active
> | `- 10:0:0:12395 sdm 8:192 active ready running
> `-+- policy='service-time 0' prio=10 status=enabled
>   `- 11:0:0:12395 sdn 8:208 active ready running
> mpatha (36006016029104b0050e3955d0d37f4ae) dm-0 DGC     ,VRAID
> size=10G features='2 queue_if_no_path retain_attached_hw_handler' 
> hwhandler='1 alua' wp=rw
> |-+- policy='service-time 0' prio=50 status=active
> | `- 11:0:0:4390  sdl 8:176 active ready running
> `-+- policy='service-time 0' prio=10 status=enabled
>   `- 10:0:0:4390  sdk 8:160 active ready running
> [root@compute75 ~]#
>
>
> After removing old paths, still we are able to access the storage.
>
>
> [root@compute75 ~]# ssh sdn@192.0.2.14
> sdn@192.0.2.14's password:
> Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.4.0-142-generic x86_64)
>
>  * Documentation:  https://help.ubuntu.com
>  * Management:     https://landscape.canonical.com
>  * Support:        https://ubuntu.com/advantage
>
> 98 packages can be updated.
> 56 updates are security updates.
>
>
> Last login: Fri Oct  4 16:49:06 2019 from 192.0.2.1
> sdn@ubuntu:~$ df -hT /mnt/test
> Filesystem     Type  Size  Used Avail Use% Mounted on
> /dev/vdb1      ext3  991M   35M  906M   4% /mnt/test
> sdn@ubuntu:~$ cd /mnt/test
> sdn@ubuntu:/mnt/test$ touch bb
> touch: cannot touch 'bb': Permission denied
> sdn@ubuntu:/mnt/test$ sudo su -
> [sudo] password for sdn:
> root@ubuntu:~# cd /mnt/test
> root@ubuntu:/mnt/test# touch bb
> root@ubuntu:/mnt/test# ls
> aa  bb  docs  docs2  lost+found
> root@ubuntu:/mnt/test#
>
>
> Now rebooted the compute node. The vm is going to error state.
>
>
>
> [root@compute75 ~]# reboot
> Connection to compute75 closed by remote host.
> Connection to compute75 closed.
> [root@osc ~(keystone_admin)]#
>
>
>
> [root@osc ~(keystone_admin)]# openstack server list
>
> +--------------------------------------+-----------+--------+-----------------+------------+
> | ID                                   | Name      | Status | Networks    
>     | Image Name |
>
> +--------------------------------------+-----------+--------+-----------------+------------+
> | 15c064ca-8bd0-40be-b384-c796db1da953 | test_vol3 | ERROR  | 
> net1=192.0.2.14 | ubuntu     |
> | afd5c571-2152-4313-988e-c74a8fc7f586 | test_vol2 | ACTIVE | 
> net1=192.0.2.13 | ubuntu     |
> | 34d6b9aa-4642-461c-ba22-508de8f5ba5a | test_vol1 | ERROR  | 
> net1=192.0.2.2  | ubuntu     |
>
> +--------------------------------------+-----------+--------+-----------------+------------+
> [root@osc ~(keystone_admin)]#
>
>
> 2019-10-07 16:09:52.456 28347 WARNING os_brick.initiator.connectors.iscsi 
> [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Failed to login iSCSI 
> target iqn.1992-04.com.emc:cx.ckm00185002995.b0 on portal 170.0.0.11:3260 
> (exit code 8).
> 2019-10-07 16:09:52.458 28347 INFO os_brick.initiator.connectors.iscsi 
> [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Trying to connect to 
> iSCSI portal 170.0.0.10:3260
> 2019-10-07 16:11:52.636 28347 WARNING os_brick.initiator.connectors.iscsi 
> [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Failed to login iSCSI 
> target iqn.1992-04.com.emc:cx.ckm00185002995.a0 on portal 170.0.0.10:3260 
> (exit code 8).
> 2019-10-07 16:11:52.789 28347 ERROR os_brick.initiator.connectors.iscsi 
> [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Could not login to any 
> iSCSI portal.
> 2019-10-07 16:11:52.790 28347 WARNING nova.compute.manager 
> [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] [instance: 
> 15c064ca-8bd0-40be-b384-c796db1da953] Failed to resume instance 
>
>
> Could you please advise further on this.
>
>
No, not really. This does not seem like an iSCSI issue, unless I'm missing 
something. It seems like something you have is caching your old IP address.

As you noted, you can clear the iscsi database with:

> # iscsiadm -m session -u

to log out of all sessions, and:

> # iscsiadm -m node --op delete

to delete all database records. Then do:

> # iscsiadm -m discovery -t st <TARGET-HOSTNAME>

to rediscover targets.

I assume you have no interface files, since you did not mention that.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4616b5ef-9fc2-492e-8688-584518256bed%40googlegroups.com.

------=_Part_4021_510925984.1570819518414
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, October 7, 2019 at 7:46:04 AM UTC-7, Kuruva Mad=
dileti wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">=
Hi Team,<div><br></div><div>We have changed the Unity storage ports from 1G=
ig to 10Gig. After that we have deleted the old iqn&#39;s from storage leve=
l and compute level.</div><div><br></div><div>old iqn&#39;s :</div><div><br=
></div><div>170.0.0.10</div><div>170.0.0.11</div><div><br></div><div>New 10=
Gig iqn&#39;s :</div><div><br></div><div>170.0.0.20</div><div>170.0.0.21</d=
iv><div><br></div><div>=C2=A0After deleting old iqn&#39;s we are able to ac=
cess the storage at compute level, that storage is assigned to openstack vm=
.</div><div><br></div><div>We have rebooted one compute host, after that we=
 are unable to access the storage and the openstack vm is going to error st=
ate.=C2=A0</div><div><br></div><div>As per the nova-compute logs, the nova =
is trying to search for old iqn&#39;s which is not present that&#39;s the r=
eason vm is going to error state.</div><div><br></div><div>Could you please=
 find the below logs and advise further...</div><div><br></div><div><br></d=
iv><div><br></div><div><br></div><div><div>root@compute75 ~]# iscsiadm -m s=
ession</div><div>tcp: [1] <a href=3D"http://170.0.0.11:3260" target=3D"_bla=
nk" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/=
url?q\x3dhttp%3A%2F%2F170.0.0.11%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEypsh-EddtAPg29l3BI4D0KVlcMg&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.11%3A3260\x26sa=
\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEypsh-EddtAPg29l3BI4D0KVlcMg&#39;;return=
 true;">170.0.0.11:3260</a>,8 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b0=
 (non-flash)</div><div>tcp: [2] <a href=3D"http://170.0.0.10:3260" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2F170.0.0.10%3A3260\x26sa\x3dD\x26sntz\x3d1\x26=
usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRGD8A&#39;;return true;" onclick=3D"thi=
s.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.10%3A3260=
\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRGD8A&#39;;=
return true;">170.0.0.10:3260</a>,9 iqn.1992-04.com.emc:cx.<wbr>ckm00185002=
995.a0 (non-flash)</div><div>tcp: [3] <a href=3D"http://170.0.0.20:3260" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www=
.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.20%3A3260\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNEEm4DNTuH_869QQH8fdPuxWj2eBA&#39;;return true;" onclick=3D=
"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.20%3A=
3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEEm4DNTuH_869QQH8fdPuxWj2eBA&#=
39;;return true;">170.0.0.20:3260</a>,7 iqn.1992-04.com.emc:cx.<wbr>ckm0018=
5002995.a1 (non-flash)</div><div>tcp: [4] <a href=3D"http://170.0.0.21:3260=
" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http:/=
/www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.21%3A3260\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGb7FN4-Nn0MazYSuwOMbTkdo0pBg&#39;;return true;" onclic=
k=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.2=
1%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGb7FN4-Nn0MazYSuwOMbTkdo0p=
Bg&#39;;return true;">170.0.0.21:3260</a>,6 iqn.1992-04.com.emc:cx.<wbr>ckm=
00185002995.b1 (non-flash)</div><div><br></div><div>We have rebooted the ol=
d iqn&#39;s from compute level, Storage team already removed 1Gig ports fro=
m Unity storage side.</div><div><br></div><div>[root@compute75 ~]# iscsiadm=
 -m node -T=C2=A0 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b0 -p 170.0.0.=
11 -u</div><div>Logging out of session [sid: 1, target: iqn.1992-04.com.emc=
:cx.<wbr>ckm00185002995.b0, portal: 170.0.0.11,3260]</div><div>Logout of [s=
id: 1, target: iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b0, portal: 170.0=
.0.11,3260] successful.</div><div>[root@compute75 ~]# iscsiadm -m node -T=
=C2=A0 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.a0=C2=A0 -p 170.0.0.10 -u=
</div><div>Logging out of session [sid: 2, target: iqn.1992-04.com.emc:cx.<=
wbr>ckm00185002995.a0, portal: 170.0.0.10,3260]</div><div>Logout of [sid: 2=
, target: iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.a0, portal: 170.0.0.10=
,3260] successful.</div><div>[root@compute75 ~]# iscsiadm -m node -o delete=
 -T=C2=A0 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b0</div><div>[root@com=
pute75 ~]# iscsiadm -m node -o delete -T=C2=A0 iqn.1992-04.com.emc:cx.<wbr>=
ckm00185002995.a0</div><div>[root@compute75 ~]#</div><div>[root@compute75 ~=
]# systemctl restart iscsi</div><div>[root@compute75 ~]# systemctl restart =
multipathd</div><div><br></div><div>Try `iscsiadm --help&#39; for more info=
rmation.</div><div>[root@compute75 ~]# iscsiadm --m node</div><div><a href=
=3D"http://170.0.0.20:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.20=
%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEEm4DNTuH_869QQH8fdPuxWj2eB=
A&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2F170.0.0.20%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjC=
NEEm4DNTuH_869QQH8fdPuxWj2eBA&#39;;return true;">170.0.0.20:3260</a>,7 iqn.=
1992-04.com.emc:cx.<wbr>ckm00185002995.a1</div><div><a href=3D"http://170.0=
.0.21:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.21%3A3260\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGb7FN4-Nn0MazYSuwOMbTkdo0pBg&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2=
F170.0.0.21%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGb7FN4-Nn0MazYSu=
wOMbTkdo0pBg&#39;;return true;">170.0.0.21:3260</a>,6 iqn.1992-04.com.emc:c=
x.<wbr>ckm00185002995.b1</div><div>[root@compute75 ~]#</div></div><div><br>=
</div><div><br></div><div>After reboot of the compute host=C2=A0</div><div>=
<br></div><div><br></div><div><div>root@compute75 ~]# iscsiadm --m session<=
/div><div>tcp: [3] <a href=3D"http://170.0.0.20:3260" target=3D"_blank" rel=
=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x=
3dhttp%3A%2F%2F170.0.0.20%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEE=
m4DNTuH_869QQH8fdPuxWj2eBA&#39;;return true;" onclick=3D"this.href=3D&#39;h=
ttp://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.20%3A3260\x26sa\x3dD\x26=
sntz\x3d1\x26usg\x3dAFQjCNEEm4DNTuH_869QQH8fdPuxWj2eBA&#39;;return true;">1=
70.0.0.20:3260</a>,7 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.a1 (non-fla=
sh)</div><div>tcp: [4] <a href=3D"http://170.0.0.21:3260" target=3D"_blank"=
 rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url=
?q\x3dhttp%3A%2F%2F170.0.0.21%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQj=
CNGb7FN4-Nn0MazYSuwOMbTkdo0pBg&#39;;return true;" onclick=3D"this.href=3D&#=
39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.21%3A3260\x26sa\x3dD=
\x26sntz\x3d1\x26usg\x3dAFQjCNGb7FN4-Nn0MazYSuwOMbTkdo0pBg&#39;;return true=
;">170.0.0.21:3260</a>,6 iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b1 (non=
-flash)</div><div>[root@compute75 ~]# multipath -ll</div><div>mpathb (<wbr>=
36006016029104b0084e7955d71109<wbr>aa0) dm-1 DGC=C2=A0 =C2=A0 =C2=A0,VRAID<=
/div><div>size=3D1.0G features=3D&#39;2 queue_if_no_path retain_attached_hw=
_handler&#39; hwhandler=3D&#39;1 alua&#39; wp=3Drw</div><div>|-+- policy=3D=
&#39;service-time 0&#39; prio=3D50 status=3Dactive</div><div>| `- 10:0:0:12=
395 sdm 8:192 active ready running</div><div>`-+- policy=3D&#39;service-tim=
e 0&#39; prio=3D10 status=3Denabled</div><div>=C2=A0 `- 11:0:0:12395 sdn 8:=
208 active ready running</div><div>mpatha (<wbr>36006016029104b0050e3955d0d=
37f<wbr>4ae) dm-0 DGC=C2=A0 =C2=A0 =C2=A0,VRAID</div><div>size=3D10G featur=
es=3D&#39;2 queue_if_no_path retain_attached_hw_handler&#39; hwhandler=3D&#=
39;1 alua&#39; wp=3Drw</div><div>|-+- policy=3D&#39;service-time 0&#39; pri=
o=3D50 status=3Dactive</div><div>| `- 11:0:0:4390=C2=A0 sdl 8:176 active re=
ady running</div><div>`-+- policy=3D&#39;service-time 0&#39; prio=3D10 stat=
us=3Denabled</div><div>=C2=A0 `- 10:0:0:4390=C2=A0 sdk 8:160 active ready r=
unning</div><div>[root@compute75 ~]#</div><div><br></div><div><br></div><di=
v>After removing old paths, still we are able to access the storage.</div><=
div><br></div><div><br></div><div>[root@compute75 ~]# ssh <a href=3D"mailto=
:sdn@192.0.2.14" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hre=
f=3D&#39;mailto:sdn@192.0.2.14&#39;;return true;" onclick=3D"this.href=3D&#=
39;mailto:sdn@192.0.2.14&#39;;return true;">sdn@192.0.2.14</a></div><div><a=
 href=3D"mailto:sdn@192.0.2.14" target=3D"_blank" rel=3D"nofollow" onmoused=
own=3D"this.href=3D&#39;mailto:sdn@192.0.2.14&#39;;return true;" onclick=3D=
"this.href=3D&#39;mailto:sdn@192.0.2.14&#39;;return true;">sdn@192.0.2.14</=
a>&#39;s password:</div><div>Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.4.0=
-142-generic x86_64)</div><div><br></div><div>=C2=A0* Documentation:=C2=A0 =
<a href=3D"https://help.ubuntu.com" target=3D"_blank" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fh=
elp.ubuntu.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHFeOo15MUU2PpUqzD8UN=
jmfwpOfQ&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.google.=
com/url?q\x3dhttps%3A%2F%2Fhelp.ubuntu.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x=
3dAFQjCNHFeOo15MUU2PpUqzD8UNjmfwpOfQ&#39;;return true;">https://help.ubuntu=
.com</a></div><div>=C2=A0* Management:=C2=A0 =C2=A0 =C2=A0<a href=3D"https:=
//landscape.canonical.com" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Flandscap=
e.canonical.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHZaoMC6tt--JvFzAQ8y=
ZFmWixa4g&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.google=
.com/url?q\x3dhttps%3A%2F%2Flandscape.canonical.com\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNHZaoMC6tt--JvFzAQ8yZFmWixa4g&#39;;return true;">https://la=
ndscape.canonical.<wbr>com</a></div><div>=C2=A0* Support:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"https://ubuntu.com/advantage" target=3D"_blank" rel=
=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://www.google.com/url?q\=
x3dhttps%3A%2F%2Fubuntu.com%2Fadvantage\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNET3VL79eChps9vsYApmr1fQpjVSw&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fubuntu.com%2Fadvantag=
e\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNET3VL79eChps9vsYApmr1fQpjVSw&#39;=
;return true;">https://ubuntu.com/advantage</a></div><div><br></div><div>98=
 packages can be updated.</div><div>56 updates are security updates.</div><=
div><br></div><div><br></div><div>Last login: Fri Oct=C2=A0 4 16:49:06 2019=
 from 192.0.2.1</div><div>sdn@ubuntu:~$ df -hT /mnt/test</div><div>Filesyst=
em=C2=A0 =C2=A0 =C2=A0Type=C2=A0 Size=C2=A0 Used Avail Use% Mounted on</div=
><div>/dev/vdb1=C2=A0 =C2=A0 =C2=A0 ext3=C2=A0 991M=C2=A0 =C2=A035M=C2=A0 9=
06M=C2=A0 =C2=A04% /mnt/test</div><div>sdn@ubuntu:~$ cd /mnt/test</div><div=
>sdn@ubuntu:/mnt/test$ touch bb</div><div>touch: cannot touch &#39;bb&#39;:=
 Permission denied</div><div>sdn@ubuntu:/mnt/test$ sudo su -</div><div>[sud=
o] password for sdn:</div><div>root@ubuntu:~# cd /mnt/test</div><div>root@u=
buntu:/mnt/test# touch bb</div><div>root@ubuntu:/mnt/test# ls</div><div>aa=
=C2=A0 bb=C2=A0 docs=C2=A0 docs2=C2=A0 lost+found</div><div>root@ubuntu:/mn=
t/test#</div><div><br></div><div><br></div><div>Now rebooted the compute no=
de. The vm is going to error state.</div><div><br></div><div><br></div><div=
><br></div><div>[root@compute75 ~]# reboot</div><div>Connection to compute7=
5 closed by remote host.</div><div>Connection to compute75 closed.</div><di=
v>[root@osc ~(keystone_admin)]#</div></div><div><br></div><div><br></div><d=
iv><br></div><div><div>[root@osc ~(keystone_admin)]# openstack server list<=
/div><div>+-----------------------------<wbr>---------+-----------+--------=
<wbr>+-----------------+-----------<wbr>-+</div><div>| ID=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Name=C2=A0 =C2=A0 =C2=A0 | Status | Net=
works=C2=A0 =C2=A0 =C2=A0 =C2=A0 | Image Name |</div><div>+----------------=
-------------<wbr>---------+-----------+--------<wbr>+-----------------+---=
--------<wbr>-+</div><div>| 15c064ca-8bd0-40be-b384-<wbr>c796db1da953 | tes=
t_vol3 | ERROR=C2=A0 | net1=3D192.0.2.14 | ubuntu=C2=A0 =C2=A0 =C2=A0|</div=
><div>| afd5c571-2152-4313-988e-<wbr>c74a8fc7f586 | test_vol2 | ACTIVE | ne=
t1=3D192.0.2.13 | ubuntu=C2=A0 =C2=A0 =C2=A0|</div><div>| 34d6b9aa-4642-461=
c-ba22-<wbr>508de8f5ba5a | test_vol1 | ERROR=C2=A0 | net1=3D192.0.2.2=C2=A0=
 | ubuntu=C2=A0 =C2=A0 =C2=A0|</div><div>+-----------------------------<wbr=
>---------+-----------+--------<wbr>+-----------------+-----------<wbr>-+</=
div><div>[root@osc ~(keystone_admin)]#</div></div><div><br></div><div><br><=
/div><div>2019-10-07 16:09:52.456 28347 WARNING os_brick.initiator.connecto=
rs.<wbr>iscsi [req-1f65b818-108d-41cb-9ea1-<wbr>ca18761a673f - - - - -] Fai=
led to login iSCSI target iqn.1992-04.com.emc:cx.<wbr>ckm00185002995.b0 on =
portal <a href=3D"http://170.0.0.11:3260" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F=
%2F170.0.0.11%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEypsh-EddtAPg2=
9l3BI4D0KVlcMg&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.go=
ogle.com/url?q\x3dhttp%3A%2F%2F170.0.0.11%3A3260\x26sa\x3dD\x26sntz\x3d1\x2=
6usg\x3dAFQjCNEypsh-EddtAPg29l3BI4D0KVlcMg&#39;;return true;">170.0.0.11:32=
60</a> (exit code 8).<br>2019-10-07 16:09:52.458 28347 INFO os_brick.initia=
tor.connectors.<wbr>iscsi [req-1f65b818-108d-41cb-9ea1-<wbr>ca18761a673f - =
- - - -] Trying to connect to iSCSI portal <a href=3D"http://170.0.0.10:326=
0" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http:=
//www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.10%3A3260\x26sa\x3dD\x26sntz=
\x3d1\x26usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRGD8A&#39;;return true;" oncli=
ck=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.=
10%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRG=
D8A&#39;;return true;">170.0.0.10:3260</a><br>2019-10-07 16:11:52.636 28347=
 WARNING os_brick.initiator.connectors.<wbr>iscsi [req-1f65b818-108d-41cb-9=
ea1-<wbr>ca18761a673f - - - - -] Failed to login iSCSI target iqn.1992-04.c=
om.emc:cx.<wbr>ckm00185002995.a0 on portal <a href=3D"http://170.0.0.10:326=
0" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http:=
//www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.10%3A3260\x26sa\x3dD\x26sntz=
\x3d1\x26usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRGD8A&#39;;return true;" oncli=
ck=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F170.0.0.=
10%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGKq5urUc0bHfikjdmwnqO7tRG=
D8A&#39;;return true;">170.0.0.10:3260</a> (exit code 8).<br>2019-10-07 16:=
11:52.789 28347 ERROR os_brick.initiator.connectors.<wbr>iscsi [req-1f65b81=
8-108d-41cb-9ea1-<wbr>ca18761a673f - - - - -] Could not login to any iSCSI =
portal.<br>2019-10-07 16:11:52.790 28347 WARNING nova.compute.manager [req-=
1f65b818-108d-41cb-9ea1-<wbr>ca18761a673f - - - - -] [instance: 15c064ca-8b=
d0-40be-b384-<wbr>c796db1da953] Failed to resume instance=C2=A0<br></div><d=
iv><br></div><div><br></div><div>Could you please advise further on this.</=
div><div><br></div></div></blockquote><div><br></div><div>No, not really. T=
his does not seem like an iSCSI issue, unless I&#39;m missing something. It=
 seems like something you have is caching your old IP address.</div><div><b=
r></div><div>As you noted, you can clear the iscsi database with:</div><div=
><br></div><div>&gt; # iscsiadm -m session -u</div><div><br></div><div>to l=
og out of all sessions, and:</div><div><br></div><div>&gt; # iscsiadm -m no=
de --op delete</div><div><br></div><div>to delete all database records. The=
n do:</div><div><br></div><div>&gt; # iscsiadm -m discovery -t st &lt;TARGE=
T-HOSTNAME&gt;</div><div><br></div><div>to rediscover targets.</div><div><b=
r></div><div>I assume you have no interface files, since you did not mentio=
n that.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/4616b5ef-9fc2-492e-8688-584518256bed%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/4616b5ef-9fc2-492e-8688-584518256bed%40googlegroups.com</a>.<b=
r />

------=_Part_4021_510925984.1570819518414--

------=_Part_4020_1092905396.1570819518413--
